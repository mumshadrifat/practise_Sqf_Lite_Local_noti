class AuthResponseModel {
   bool? success;
   String? token;

  AuthResponseModel(this.success, this.token);
/*   bool? get getSuccess=>this.success;
   String? get getToken=>this.token;*/
 /* set success(bool i){
    success=i;
  }*/



  AuthResponseModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['token'] = this.token;
    return data;
  }
}