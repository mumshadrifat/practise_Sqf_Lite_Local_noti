import 'package:get/get.dart';

import '../controllers/xtra_ui_controller.dart';

class XtraUiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<XtraUiController>(
      () => XtraUiController(),
    );
  }
}
