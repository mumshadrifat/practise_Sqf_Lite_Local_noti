import 'dart:ui';

import 'package:flutter/cupertino.dart';

class BigText extends StatelessWidget {
  Color? color;
  String text;
  double size;
  FontWeight? fontWeight;
  //TextOverflow overflow;

  BigText(
      {Key? key,
        this.color=const Color(0xFF332d2b),
        required this.text,
        this.size = 20,
        this.fontWeight= FontWeight.w400,
        /*this.overflow = TextOverflow.ellipsis*/})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      //overflow: overflow,
      style: TextStyle(
        fontSize: size,
        fontFamily:'Roboto' ,
        fontWeight:fontWeight,
        color: color,
      ),
    );
  }
}