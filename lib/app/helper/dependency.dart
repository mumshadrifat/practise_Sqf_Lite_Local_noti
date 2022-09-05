

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:practise_rifat/app/data/repository/user_repo.dart';
import 'package:practise_rifat/app/modules/user_view/controllers/user_view_controller.dart';

import '../data/api/ap_client.dart';
import '../data/repository/login_repo.dart';


Future <void> init()async {
  // final sharedPreferences = await SharedPreferences.getInstance();
  // api client
  // Get.lazyPut(() => ApiClient(appBaseUrl: "http://mvs.bslmeiyu.com"));
  Get.lazyPut(() => ApiClient(appBaseUrl: "https://reqres.in"));


  //Repositories

  Get.lazyPut(() =>LoginRepo(apiClient: Get.find()));
  Get.lazyPut(() =>UserRepo(apiClient: Get.find()));
  
  //controller

 // Get.lazyPut(() => LoginController(loginRepo: Get.find()));
  Get.lazyPut(() =>UserViewController(userRepo: Get.find()));

}