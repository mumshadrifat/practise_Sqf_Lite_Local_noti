class InspectionPost {
  String? sTRUCTID;
  String? iNSPDATE;
  List<InspObsIndviStrTmps>? inspObsIndviStrTmps;
  VisualObservation? visualObservation;

  InspectionPost({this.sTRUCTID, this.iNSPDATE, this.inspObsIndviStrTmps, this.visualObservation});

  InspectionPost.fromJson(Map<String, dynamic> json) {
    sTRUCTID = json['STRUCTID'];
    iNSPDATE = json['INSP_DATE'];
    if (json['insp_Obs_IndviStr_Tmps'] != null) {
      inspObsIndviStrTmps = <InspObsIndviStrTmps>[];
      json['insp_Obs_IndviStr_Tmps'].forEach((v) { inspObsIndviStrTmps!.add(new InspObsIndviStrTmps.fromJson(v)); });
    }
    visualObservation = json['visual_observation'] != null ? new VisualObservation.fromJson(json['visual_observation']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['STRUCTID'] = this.sTRUCTID;
    data['INSP_DATE'] = this.iNSPDATE;
    if (this.inspObsIndviStrTmps != null) {
      data['insp_Obs_IndviStr_Tmps'] = this.inspObsIndviStrTmps!.map((v) => v.toJson()).toList();
    }
    if (this.visualObservation != null) {
      data['visual_observation'] = this.visualObservation!.toJson();
    }
    return data;
  }
}

class InspObsIndviStrTmps {
  String? cOMPID;
  String? cOMPSLNO;
  String? sPALLING;
  String? rEMARK;
  String? sETTLEMENT;
  String? tILTING;
  String? cRACKS;
  String? mISSECTION;
  String? mOVEMENT;
  String? rEBAR;
  String? sCOURING;
  String? oBSTRUCT;
  String? aBRASION;
  String? dISTORTION;
  String? cOLLISION;
  String? dAMAGED;
  String? eROSION;
  String? pATCHED;
  String? dEFORMATION;
  String? aCCUMULATION;
  String? eFFLORESCENCE;
  String? cRACKOFDECK;
  String? dELAMINATION;

  InspObsIndviStrTmps({this.cOMPID, this.cOMPSLNO, this.sPALLING, this.rEMARK, this.sETTLEMENT, this.tILTING, this.cRACKS, this.mISSECTION, this.mOVEMENT, this.rEBAR, this.sCOURING, this.oBSTRUCT, this.aBRASION, this.dISTORTION, this.cOLLISION, this.dAMAGED, this.eROSION, this.pATCHED, this.dEFORMATION, this.aCCUMULATION, this.eFFLORESCENCE, this.cRACKOFDECK, this.dELAMINATION});

  InspObsIndviStrTmps.fromJson(Map<String, dynamic> json) {
    cOMPID = json[' COMP_ID'];
    cOMPSLNO = json['COMP_SLNO'];
    sPALLING = json['SPALLING'];
    rEMARK = json['REMARK'];
    sETTLEMENT = json['SETTLEMENT'];
    tILTING = json['TILTING'];
    cRACKS = json['CRACKS'];
    mISSECTION = json['MISSECTION'];
    mOVEMENT = json['MOVEMENT'];
    rEBAR = json['REBAR'];
    sCOURING = json['SCOURING'];
    oBSTRUCT = json['OBSTRUCT'];
    aBRASION = json['ABRASION'];
    dISTORTION = json['DISTORTION'];
    cOLLISION = json['COLLISION'];
    dAMAGED = json['DAMAGED'];
    eROSION = json['EROSION'];
    pATCHED = json['PATCHED'];
    dEFORMATION = json['DEFORMATION'];
    aCCUMULATION = json[' ACCUMULATION'];
    eFFLORESCENCE = json['EFFLORESCENCE'];
    cRACKOFDECK = json['CRACK_OF_DECK'];
    dELAMINATION = json['DELAMINATION'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data[' COMP_ID'] = this.cOMPID;
    data['COMP_SLNO'] = this.cOMPSLNO;
    data['SPALLING'] = this.sPALLING;
    data['REMARK'] = this.rEMARK;
    data['SETTLEMENT'] = this.sETTLEMENT;
    data['TILTING'] = this.tILTING;
    data['CRACKS'] = this.cRACKS;
    data['MISSECTION'] = this.mISSECTION;
    data['MOVEMENT'] = this.mOVEMENT;
    data['REBAR'] = this.rEBAR;
    data['SCOURING'] = this.sCOURING;
    data['OBSTRUCT'] = this.oBSTRUCT;
    data['ABRASION'] = this.aBRASION;
    data['DISTORTION'] = this.dISTORTION;
    data['COLLISION'] = this.cOLLISION;
    data['DAMAGED'] = this.dAMAGED;
    data['EROSION'] = this.eROSION;
    data['PATCHED'] = this.pATCHED;
    data['DEFORMATION'] = this.dEFORMATION;
    data[' ACCUMULATION'] = this.aCCUMULATION;
    data['EFFLORESCENCE'] = this.eFFLORESCENCE;
    data['CRACK_OF_DECK'] = this.cRACKOFDECK;
    data['DELAMINATION'] = this.dELAMINATION;
    return data;
  }
}

class VisualObservation {




VisualObservation.fromJson(Map<String, dynamic> json) {
}

Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  return data;
}
}