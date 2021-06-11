import 'package:app_covid_2/app/data/model/user_model.dart';
import 'package:app_covid_2/app/data/repository/login_repository.dart';
import 'package:app_covid_2/app/data/repository/user_respository.dart';
import 'package:app_covid_2/app/global/controllers/user_controller.dart';
import 'package:app_covid_2/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  final UserRepository repository;
  SplashController(this.repository);
  UserController userController = Get.find<UserController>();

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    print("pronto");
    verificacaoInicial();
  }

  void verificacaoInicial() async {
    UserModel user = await repository.userconectado();
    if (user.id != 'id') {
      userController.setUser = user;
      Get.toNamed(Routes.HOME);
    } else {
      Get.toNamed(Routes.LOGIN);
    }
    await Future.delayed(Duration(seconds: 5));
  }

  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}
