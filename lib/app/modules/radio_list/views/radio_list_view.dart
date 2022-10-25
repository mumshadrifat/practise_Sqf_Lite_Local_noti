import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/radio_list_controller.dart';

class RadioListView extends GetView<RadioListController> {
  List<RadioModel> sampleData = [];
  RxList<int> groupValue = <int>[].obs;
  List<List<int>> value = [];
   RadioListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    sampleData.add(new RadioModel(false, 'A', 'April 18', 'text1'));
    sampleData.add(new RadioModel(false, 'B', 'April 17', 'text2'));
    sampleData.add(new RadioModel(false, 'C', 'April 16', 'text3'));
    sampleData.add(new RadioModel(false, 'D', 'April 15', 'text4'));
    groupValue.add(0);
    groupValue.add(2);
    groupValue.add(4);
    groupValue.add(6);
    value.add([0,1]);
    value.add([2,3]);
    value.add([4,5]);
    value.add([6,7]);
    value.add([6,7]);
    value.add([6,7]);
    return Scaffold(
      appBar: AppBar(
        title: const Text('RadioListView'),
        centerTitle: true,
      ),
      body:ListView.builder(
        itemCount: sampleData.length,
        itemBuilder: (context, index) =>Obx(() =>  ButtonBar(
          alignment: MainAxisAlignment.center,
          children: <Widget>[
            Radio(
                groupValue: groupValue[index],
                value: value[index][0],
                onChanged: (newValue) {
                  groupValue[index] = newValue as int;
                }
            ),
            Radio(
              groupValue: groupValue[index],
              value: value[index][1],
              onChanged: (newValue) {
                groupValue[index] = newValue as int;
              },
            ),
          ],
        )),
      ),

    );
  }

}

Widget _myRadioButton({String? title, int? value, Function? onChanged, int? index,int? groupValues}) {
  return Radio(
    value: value,
    groupValue: groupValues,
    onChanged: onChanged!(),
  );
}
class RadioModel {
  bool isSelected;
  final String buttonText;
  final String text;
  final String text1;

  RadioModel(this.isSelected, this.buttonText, this.text, this.text1);
}