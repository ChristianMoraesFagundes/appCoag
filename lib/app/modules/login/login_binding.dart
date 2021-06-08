import 'package:app_covid_2/app/data/repository/login_repository.dart';
import 'package:app_covid_2/app/modules/login/login_controller.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController(LoginRepository()));
  }
}
