class UserModel {
  int? id;
  String? name;
  String? job;

  UserModel({this.id,this.name, this.job});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    job = json['job'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['job'] = this.job;


    if(id!=null){
      data['id']=id;
    }
    return data;
  }
}