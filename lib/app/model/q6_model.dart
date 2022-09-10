class Q6 {
  String? compId;
  String? crack;
  String? tilting;
  int? insId;

  Q6({

    this.compId,
    this.crack,
    this.tilting,
    this.insId,

  });

  Q6.fromJson(Map<String, dynamic> json) {
    compId = json[' compId'];
    crack = json['crack'];
    tilting = json['tilting'];
    insId = json['insId'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['compId'] = this.compId;
    data['crack'] = this.crack;
    data['tilting'] = this.tilting;
    data['insId'] = this.insId;


    return data;
  }
}
