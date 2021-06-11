import 'package:app_covid_2/app/data/model/user_model.dart';
import 'package:app_covid_2/app/data/repository/user_respository.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  final UserRepository repository;
  UserController(this.repository) : assert(repository != null);

  UserModel? _userConectado;

  set setUser(UserModel user) => this._userConectado = user;
  bool get userConectado => this._userConectado != null;

  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}
