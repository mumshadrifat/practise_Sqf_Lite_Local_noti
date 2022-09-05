
import 'package:flutter/material.dart';


import 'dialouge_box.dart';
import 'dialouge_box_task_submit.dart';

class DialogHelper {

  static exit(context) => showDialog(context: context, builder: (context) => DialougeBox());
  static exitTask(context) => showDialog(context: context, builder: (context) => DialougeBoxTaskSbmt());
}