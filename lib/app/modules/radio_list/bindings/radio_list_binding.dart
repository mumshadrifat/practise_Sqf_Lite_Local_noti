import 'package:get/get.dart';

import '../controllers/radio_list_controller.dart';

class RadioListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RadioListController>(
      () => RadioListController(),
    );
  }
}
