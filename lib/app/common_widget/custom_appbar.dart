import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Custom_Appbar(){
  return AppBar(
      actions: [

      ],
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
      title: Text(
        'Decimal to Binary & Vice Versa',
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 19),
      ));
}