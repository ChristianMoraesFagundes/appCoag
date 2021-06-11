import 'package:app_covid_2/app/data/providers/user_provider.dart';
import 'package:app_covid_2/app/data/repository/login_repository.dart';
import 'package:app_covid_2/app/modules/login/login_controller.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    UserProvider userProvider = UserProvider();
    Get.lazyPut<LoginController>(
        () => LoginController(LoginRepository(userProvider)));
  }
}
