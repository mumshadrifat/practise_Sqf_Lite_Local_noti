import 'package:get/get.dart';


import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/radio_button_in_list/bindings/radio_button_in_list_binding.dart';
import '../modules/radio_button_in_list/views/radio_button_in_list_view.dart';
import '../modules/user_view/bindings/user_view_binding.dart';
import '../modules/user_view/views/user_view_view.dart';


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
    // GetPage(
    //   name: _Paths.FAVOURITE,
    //   page: () => const FavouriteView(),
    //   binding: FavouriteBinding(),
    // ),
    // GetPage(
    //   name: _Paths.XTRA_UI,
    //   page: () => XtraUiView(),
    //   binding: XtraUiBinding(),
    // ),
    GetPage(
      name: _Paths.RADIO_BUTTON_IN_LIST,
      page: () =>  RadioButtonInListView(),
      binding: RadioButtonInListBinding(),
    ),
  ];
}
