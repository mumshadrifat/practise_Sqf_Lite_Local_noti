import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practise_rifat/app/utils/dimens.dart';


class DropDown extends StatelessWidget {
  String? text;
  double? heigh;
  double? width;
  Color? iconColor;
  IconData? icon;
  List<String>? list = <String>['A', 'B', 'C', 'D'];

  var ass = "Road Name".obs;
  RxBool dropClicked = false.obs;

  DropDown(
      {Key? key,
      this.text,
      this.width,
      this.icon,
      this.heigh,
      this.iconColor,
      this.list})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
            right: Dimension.width15,
            left: Dimension.width15,
            top: Dimension.height5,
            bottom: Dimension.height5),
        height: Dimension.height20 * 2,
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Dimension.radius30),
          border: Border.all(color: Colors.black),
          /*   boxShadow:[
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 2,

                      )

                    ],*/
        ),
        child: Row(
          children: [
            Obx(
              () => Text(
                dropClicked.isTrue ? ass.value.toString() : text.toString(),
                style: TextStyle(color: Colors.black),
              ),
            ),
            Expanded(
                child: SizedBox(
              width: 10,
            )),
            DropdownButton<String>(
              items: <String>['A', 'B', 'C', 'D'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                ass.value = value!;
                print(value);
                print(ass.value);
                dropClicked.value = true;

                print(dropClicked);
              },
            ),
          ],
        ));
  }
}
