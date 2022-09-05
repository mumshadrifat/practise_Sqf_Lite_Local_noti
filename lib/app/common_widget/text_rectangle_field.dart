import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:practise_rifat/app/common_widget/text.dart';
import 'package:practise_rifat/app/utils/dimens.dart';

class TextRectangleField extends StatelessWidget {
  String text;
  double heigh;
  double width;

  TextRectangleField(
      {Key? key, required this.text, required this.width, required this.heigh})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 90,
          height: 50,
          child: Center(
            child: BigText(
              text: text,
              size: Dimension.mediumFont,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(right: 5),
            height: 40,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.black),
              /*   boxShadow:[
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 2,

                      )

                    ],*/
            ),
            /*child: Row(
              children: [
                Expanded(
                    child: SizedBox(
                      width: Dimension.width20,
                    )),
                Icon(
                  Icons.arrow_drop_down,
                  size: 30,
                ),
              ],
            ),*/
          ),
        )
      ],
    );
  }
}
