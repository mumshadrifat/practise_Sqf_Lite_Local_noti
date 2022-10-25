import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/xtra_ui_controller.dart';

class XtraUiView extends GetView<XtraUiController> {
  RxString selectValue="hello".obs;
   XtraUiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('XtraUiView'),
        centerTitle: true,
      ),
      body: Obx(() => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black12,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Radio(
                          value: "male", groupValue: selectValue.value, onChanged: (value) {
                        selectValue.value=value.toString();
                      }),
                      Expanded(
                          child: Text(
                            'Male',
                            maxLines: 2,
                          ))
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Radio(
                          value: "হ্যাঁ", groupValue: selectValue.value, onChanged: (value) {
                        selectValue.value=value.toString();
                      }),
                      Text('হ্যাঁ')
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Radio(
                          value: "other", groupValue: selectValue.value, onChanged: (value) {
                        selectValue.value=value.toString();
                      }),
                      Text('Others')
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Radio(
                          value: "rifat", groupValue: selectValue.value, onChanged: (value) {
                        selectValue.value=value.toString();
                      }),
                      Text('Rifat')
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Radio(
                          value: "rajib", groupValue:selectValue.value, onChanged: (value) {
                        selectValue.value=value.toString();
                      }),
                      Text('Razib')
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Radio(
                          value: "hello", groupValue: selectValue.value, onChanged: (value) {
                        selectValue.value=value.toString();
                      }),
                      Text('Hello'),
                      Text('Hello'),
                      Text('Hello')
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),)
    );
  }
}
