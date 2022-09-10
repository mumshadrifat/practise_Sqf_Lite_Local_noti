class InsModel {
  String? structureId;
  String? insDate;


  InsModel({this.structureId, this.insDate});

  InsModel.fromJson(Map<String, dynamic> json) {
    structureId = json['structureId'];
    insDate = json['insDate'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['structureId'] = this.structureId;
    data['insDate'] = this.insDate;

    return data;
  }
}