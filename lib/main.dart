import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practise_rifat/app/utils/theme_services.dart';

import 'app/helper/dependency.dart' as dep;
import 'app/routes/app_pages.dart';
import 'app/utils/themes.dart';

void main() {
  WidgetsFlutterBinding().ensureVisualUpdate();
  dep.init();

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      theme: Themes.light,
      themeMode: ThemeServices().theme,
      getPages: AppPages.routes,
    ),
  );
}
