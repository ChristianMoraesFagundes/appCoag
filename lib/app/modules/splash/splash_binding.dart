import 'package:app_covid_2/app/data/providers/user_provider.dart';
import 'package:app_covid_2/app/data/repository/login_repository.dart';
import 'package:app_covid_2/app/data/repository/user_respository.dart';
import 'package:app_covid_2/app/modules/splash/splash_controller.dart';
import 'package:get/get.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
        () => SplashController(UserRepository(UserProvider())));
  }
}
