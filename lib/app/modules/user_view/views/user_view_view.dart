import 'dart:io';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practise_rifat/app/common_widget/button.dart';
import 'package:practise_rifat/app/data/database_helper/databse_helper.dart';
import 'package:practise_rifat/app/model/ins_model.dart';
import 'package:practise_rifat/app/utils/colors.dart';

import '../../../../main.dart';
import '../../../model/q6_model.dart';
import '../../../noti.dart';
import '../../../routes/app_pages.dart';
import '../controllers/user_view_controller.dart';

class UserViewView extends GetView<UserViewController> {
  UserViewView({Key? key}) : super(key: key);

  RxInt bottomNavIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
            children: [
              GestureDetector(
                onTap: () async {
                  DataBaseHelper.instance.newQuery();
                },
                child: CustomButton(
                  height: 60,
                  width: 150,
                  text: "Show",
                  radius: 10,
                  backgroundColour: AppColors.primary_color,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                  child: Obx(
                () => ListView.builder(
                    itemCount: controller.userList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(bottom: 10),
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  controller.userList[index].email.toString(),
                                  //  "jj",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  controller.userList[index].id.toString(),
                                ),
                                Text(
                                  controller.userList[index].firstName
                                      .toString(),
                                  //  "hh"
                                ),
                                Text(
                                  controller.userList[index].lastName
                                      .toString(),
                                ),
                              ],
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(controller
                                    .userList[index].avatar
                                    .toString())),
                          ],
                        ),
                      );
                    }),
              )),
              SizedBox(
                height: 10,
              ),
              Text("End"),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  controller.onImageButtonPressed();
                },
                child: CustomButton(
                  height: 60,
                  width: 150,
                  text: "Picture",
                  radius: 10,
                  backgroundColour: AppColors.primary_color,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Obx(
                () => controller.imagePath.value == "r"
                    ? CustomButton(
                        height: 60,
                        width: 150,
                        text: "Nope",
                        radius: 10,
                        backgroundColour: AppColors.primary_color,
                      )
                    : Container(
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.file(File(controller.imagePath.value)),
                      ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () async {
                  int? insId;
                  insId = await DataBaseHelper.instance.insertInsModel(
                      InsModel(insDate: "23-aug-2015", structureId: "233"));
                  List<Q6> list = [
                    Q6(compId: "222", crack: "2", tilting: "d", insId: insId),
                    Q6(compId: "222", crack: "2", tilting: "d", insId: insId),
                    Q6(compId: "222", crack: "2", tilting: "d", insId: insId),
                    Q6(compId: "222", crack: "2", tilting: "d", insId: insId),
                    Q6(compId: "222", crack: "2", tilting: "d", insId: insId),
                    Q6(compId: "222", crack: "2", tilting: "d", insId: insId),
                  ];
                  for (int i = 0; i < list.length; i++) {
                    DataBaseHelper.instance.insertQ6(list[i]);
                  }
                },
                child: CustomButton(
                  height: 60,
                  width: 150,
                  text: "Insert",
                  radius: 10,
                  backgroundColour: AppColors.primary_color,
                ),
              ),
            ],
          ),
          bottomNavigationBar: Obx(
            () => AnimatedBottomNavigationBar(
                gapLocation: GapLocation.center,
                notchSmoothness: NotchSmoothness.defaultEdge,
                backgroundColor: Colors.white10,
                activeColor: Colors.amberAccent,

                icons: [
                  Icons.home,
                  Icons.search,
                  Icons.favorite,
                  Icons.trending_flat_outlined
                ],
                activeIndex: bottomNavIndex.value,
                onTap: (index) {
                  bottomNavIndex.value = index;
                  if (index == 2) {
                    Get.toNamed(Routes.FAVOURITE);
                  }
                  if (index == 1) {
                    Get.toNamed(Routes.XTRA_UI);
                  }


                  else if (index == 0) {
               Noti.showBigTextNotification(title: "hello", body: "I am here man", fln: flutterLocalNotificationsPlugin);
                  }
                }),
          )
          //other params
          ),
    );
  }
}
