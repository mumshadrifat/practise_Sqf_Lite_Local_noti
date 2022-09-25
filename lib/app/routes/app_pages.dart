import 'package:get/get.dart';

import '../modules/favourite/bindings/favourite_binding.dart';
import '../modules/favourite/views/favourite_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/user_view/bindings/user_view_binding.dart';
import '../modules/user_view/views/user_view_view.dart';
import '../modules/xtra_ui/bindings/xtra_ui_binding.dart';
import '../modules/xtra_ui/views/xtra_ui_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.USER_VIEW;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.USER_VIEW,
      page: () => UserViewView(),
      binding: UserViewBinding(),
    ),
    GetPage(
      name: _Paths.FAVOURITE,
      page: () => const FavouriteView(),
      binding: FavouriteBinding(),
    ),
    GetPage(
      name: _Paths.XTRA_UI,
      page: () =>  XtraUiView(),
      binding: XtraUiBinding(),
    ),
  ];
}
