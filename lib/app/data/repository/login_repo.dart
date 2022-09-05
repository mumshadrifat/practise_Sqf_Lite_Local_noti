
import 'package:get/get.dart';



import '../api/ap_client.dart';

class LoginRepo extends GetxService{
  late final ApiClient apiClient;


  LoginRepo({  required this.apiClient});

  /*Future<Response> getLogin(LoginModel loginModel){
    return  apiClient.getLogin("/api/login",loginModel.toJson());
  }*/

/* saveUserToken(String token) {
    apiClient.token=token;
    apiClient.updateHeader(token);
    return sharedPreferences.setString(AppConstants.TOKEN,token);
   }*/


}