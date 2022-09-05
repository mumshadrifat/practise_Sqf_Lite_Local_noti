import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:practise_rifat/app/model/user_upate_model.dart';

import '../api/ap_client.dart';

class UserRepo extends GetxService{
  late final ApiClient apiClient;


  UserRepo({ required this.apiClient});


  Future<Response> getUpdate(UserBody userBody){

    return apiClient.getUpdate("/api/user/2", userBody.toJson());

  }
  Future<Response> getUserList(){

    return apiClient.getData("/api/users?page=2");

  }

/*Future<Response> getLogin(LoginModel loginModel){
    return  apiClient.getLogin("/api/login",loginModel.toJson());
  }*/

/* saveUserToken(String token) {
    apiClient.token=token;
    apiClient.updateHeader(token);
    return sharedPreferences.setString(AppConstants.TOKEN,token);
   }*/


}