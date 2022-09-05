
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:practise_rifat/app/common_widget/text.dart';
import 'package:practise_rifat/app/utils/dimens.dart';

import 'button.dart';
import 'dialouge_helper.dart';

class DialougeBox extends StatelessWidget {
   DialougeBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)), //this right here
      child: Container(

          height: Dimension.height30*Dimension.height10,
          width: Dimension.width30*Dimension.width10,
          child: Column(

            children: [
              Container(
                  padding: EdgeInsets.only(left: 5,right: 5,top: 5),
                height: Dimension.height30,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: BigText(text: "Forward",color: Colors.white,size: 20
                )
              ),
             Container(
               padding: EdgeInsets.only(left: Dimension.width20,right: Dimension.width20),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   SizedBox(
                     height: Dimension.height30,
                   ),
                   BigText(text: "Documents Collect",size: Dimension.mediumFont),
                   SizedBox(height: 5,),
                   BigText(text: "Task #0056",size: Dimension.mediumFont),
                   SizedBox(height: 5,),
                   Row(
                     children: [
                       BigText(text: "Officer",size: Dimension.mediumFont),
                       /*DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      value: dropdownValue,
                      onChanged: (String? value){
                        dropdownValue=value;
                      },
                      hint: Row(
                        children: const [
                          Icon(
                            Icons.list,
                            size: 16,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: Text(
                              'Select Item',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.yellow,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      items: _items
                          .map(
                            (item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(item),
                        ),
                      )
                          .toList(),
                      icon: const Icon(
                        Icons.arrow_forward_ios_outlined,
                      ),
                      iconSize: 14,
                      iconEnabledColor: Colors.yellow,
                      iconDisabledColor: Colors.grey,
                      buttonHeight: 50,
                      buttonWidth: 160,
                      buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                      buttonDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                            color: Colors.black26,
                          )),
                    ),
                  ),*/
                       SizedBox(width: Dimension.width10,),
                       Expanded(
                         child: Container(
                           padding: EdgeInsets.only(right: 20),
                      
                           height: 30,
                         
                           decoration: BoxDecoration(
                             border: Border.all(color:Colors.black26),

                           ),
                         ),
                       ),
                     ],
                   ),
                   SizedBox(height: 30,),
                   Container(
                     width: double.maxFinite,

                   ),

                  GestureDetector(
                    onTap: () async {
                      return await DialogHelper.exitTask(context);
                    },
                    child:  Row(
                      children: [
                        Expanded(child: SizedBox(height: Dimension.height10,)),
                        CustomButton(height: 30, width: 80, text:"Submit", radius: 5,backgroundColour: Colors.green),
                      ],
                    ),
                  )


                 ],
               ),
             )
            ],
          )),
    );
    //showDialog(context: context, builder: (BuildContext context) => errorDialog
    }
  }

