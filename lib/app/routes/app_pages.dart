import 'package:app_covid_2/app/modules/home/home_page.dart';
import 'package:app_covid_2/app/modules/login/login_binding.dart';
import 'package:app_covid_2/app/modules/login/login_page.dart';
import 'package:app_covid_2/app/modules/splash/splash_binding.dart';
import 'package:app_covid_2/app/modules/splash/splash_page.dart';
import 'package:get/get.dart';
part './app_route.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    ),
    GetPage(
        name: Routes.LOGIN, page: () => LoginPage(), binding: LoginBinding()),
    GetPage(
      name: Routes.INITIAL,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
  ];
}
