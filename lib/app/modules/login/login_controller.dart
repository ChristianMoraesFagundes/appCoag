import 'package:app_covid_2/app/data/repository/login_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final LoginRepository repository;

  LoginController(this.repository);
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void setEmail(String newvalue) {
    email.text = newvalue;
  }

  void setPassword(String newvalue) {
    password.text = newvalue;
  }

  final _obj = ''.obs;

  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}
