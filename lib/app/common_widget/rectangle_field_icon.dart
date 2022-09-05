import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:practise_rifat/app/common_widget/text.dart';
import 'package:practise_rifat/app/utils/dimens.dart';


class RectangleFieldTextIcon extends StatelessWidget {
  String text;
  double heigh;
  double width;
  Color iconColor;
  IconData icon;
  List<String>? list = <String>['A', 'B', 'C', 'D'];

  RectangleFieldTextIcon(
      {Key? key,
      required this.text,
      required this.width,
      required this.icon,
      required this.heigh,
      required this.iconColor,
      this.list})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /* Container(
          width:90 ,
          height: 40,
          child: Center(
            child: BigText(
              text: text,
              size: Dimension.mediumFont,
            ),
          ),
        ),*/
        SizedBox(
          width: Dimension.width10,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(
                right: Dimension.width15,
                left: Dimension.width15,
                top: Dimension.height5,
                bottom: Dimension.height5),
            height: Dimension.height20 * 2,
            width: Dimension.width20 * 5,
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
                BigText(text: text, size: Dimension.mediumFont),
                Expanded(
                    child: SizedBox(
                  width: Dimension.width20,
                )),
               /* DropdownButton<String>(
                  items: <String>['A', 'B', 'C', 'D'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Container(height: 30,width: 30,child: Text(ass.value,style: TextStyle(color:Colors.black,fontSize: 16),)),
                    );
                  }).toList(),
                  onChanged: (value) {
                    ass.value=value!;
                  },
                )*/
              ],
            ),



          ),
        )
      ],
    );
  }
  var ass ='R'.obs;
}
