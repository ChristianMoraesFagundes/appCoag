import 'package:app_covid_2/app/data/repository/login_repository.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final LoginRepository repository;

  LoginController(this.repository);
  final _obj = ''.obs;

  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}
