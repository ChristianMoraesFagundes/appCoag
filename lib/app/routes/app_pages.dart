import 'package:app_covid_2/app/modules/home/home_page.dart';
import 'package:app_covid_2/app/modules/login/login_binding.dart';
import 'package:app_covid_2/app/modules/login/login_page.dart';
import 'package:get/get.dart';
part './app_route.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
    ),
    GetPage(
      name: Routes.INITIAL,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
  ];
}
