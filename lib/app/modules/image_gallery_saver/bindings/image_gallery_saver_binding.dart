import 'package:get/get.dart';

import '../controllers/image_gallery_saver_controller.dart';

class ImageGallerySaverBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImageGallerySaverController>(
      () => ImageGallerySaverController(),
    );
  }
}
