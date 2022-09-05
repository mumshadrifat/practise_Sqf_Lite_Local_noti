//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:practise_rifat/app/common_widget/text.dart';
// import 'package:practise_rifat/app/utils/dimens.dart';
//
//
// class TaskForward extends StatelessWidget {
//   List<String> _items = ['cs1', 'cs2', 'cs3', 'cs4'];
//   String? dropdownValue = 'cs1';
//
//   TaskForward({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         height: 300,
//         width: 300,
//         child: Column(
//           children: [
//             Container(
//               height: Dimension.height20,
//               decoration: BoxDecoration(
//                 color: Colors.green,
//               ),
//             ),
//             SizedBox(
//               height: Dimension.height30,
//             ),
//             BigText(text: "Documents Collect"),
//             BigText(text: "Task #0056"),
//             Obx(() => Row(
//               children: [
//                 BigText(text: "Officer"),
//                 DropdownButtonHideUnderline(
//                   child: DropdownButton2(
//                     value: dropdownValue,
//                     onChanged: (String? value){
//                       dropdownValue=value;
//                     },
//                     hint: Row(
//                       children: const [
//                         Icon(
//                           Icons.list,
//                           size: 16,
//                           color: Colors.yellow,
//                         ),
//                         SizedBox(
//                           width: 4,
//                         ),
//                         Expanded(
//                           child: Text(
//                             'Select Item',
//                             style: TextStyle(
//                               fontSize: 14,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.yellow,
//                             ),
//                             overflow: TextOverflow.ellipsis,
//                           ),
//                         ),
//                       ],
//                     ),
//                     items: _items
//                         .map(
//                           (item) => DropdownMenuItem<String>(
//                         value: item,
//                         child: Text(item),
//                       ),
//                     )
//                         .toList(),
//                     icon: const Icon(
//                       Icons.arrow_forward_ios_outlined,
//                     ),
//                     iconSize: 14,
//                     iconEnabledColor: Colors.yellow,
//                     iconDisabledColor: Colors.grey,
//                     buttonHeight: 50,
//                     buttonWidth: 160,
//                     buttonPadding: const EdgeInsets.only(left: 14, right: 14),
//                     buttonDecoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(14),
//                         border: Border.all(
//                           color: Colors.black26,
//                         )),
//                   ),
//                 ),
//                 Container(
//                   height: 100,
//                   width: 100,
//                   decoration: BoxDecoration(
//                     border: Border.all(color:Colors.black26),
//
//                   ),
//                 ),
//               ],
//             ),),
//             CustomButton(height: 30, width: 150, text:"Submit", radius: 5),
//
//           ],
//         ));
//   }
// }
