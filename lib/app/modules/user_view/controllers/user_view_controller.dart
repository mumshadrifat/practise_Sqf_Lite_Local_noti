import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:practise_rifat/app/model/userList.dart';
import 'package:practise_rifat/app/model/user_upate_model.dart';

import '../../../data/repository/user_repo.dart';

class UserViewController extends GetxController {
  //TODO: Implement UserViewController
  var imagePath = "r".obs;
  static XFile? pickedFile;
  final ImagePicker _picker = ImagePicker();

  Future<void> onImageButtonPressed() async {
    try {
      pickedFile = await _picker.pickImage(source: ImageSource.camera);

      if (pickedFile != null) {
        print("${pickedFile?.name}");
        print("${pickedFile?.path}");
        update();
        imagePath.value = "${pickedFile?.path}";
        update();
        print("PATH + ${imagePath.value}");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  late final UserRepo userRepo;
  RxList userList = <Data>[].obs;

  UserViewController({required this.userRepo});

  getUpdate(UserBody userBody) async {
    Response response = await userRepo.getUpdate(userBody);
    if (response.statusCode == 200) {
      print("success");
      print(response.body.toString());

      //authResponseModel = AuthResponseModel(true, response.body["token"]);

    } else {
      //  authResponseModel = AuthResponseModel(false, response.statusText);

      print("failed");
    }
    update();
  }

  mUpdate() {
    update();
  }

  Future<void> upload() async {
    http.StreamedResponse response = await updateProfile(pickedFile);

    if (response.statusCode == 200) {
      Map map = jsonDecode(await response.stream.bytesToString());
      String message = map["message"];
      imagePath.value = message;
      // _pickedFile = null;
      //await getUserInfo();
      print(message);
    } else {
      print("error posting the image");
    }
    update();
  }

  Future<http.StreamedResponse> updateProfile(XFile? data) async {
    http.MultipartRequest request = http.MultipartRequest(
        'POST', Uri.parse('http://127.0.0.1:8000/upload'));
    // request.headers.addAll(<String,String>{'Authorization': 'Bearer $token'});
    if (GetPlatform.isMobile && data != null) {
      File _file = File(data.path);
      request.files.add(http.MultipartFile(
          'image', _file.readAsBytes().asStream(), _file.lengthSync(),
          filename: _file.path.split('/').last));
    }

    // request.fields.addAll(_fields);
    http.StreamedResponse response = await request.send();
    return response;
  }

  getUserList() async {
    Response response = await userRepo.getUserList();
    if (response.statusCode == 200) {
      print("success");
      print(response.body.toString());
      userList.value =
          UserList.fromJson(response.body).data!.toList(growable: true);
      print(userList.length.toString());
    } else {
      print("failed");
    }
  }

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    getUserList();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
