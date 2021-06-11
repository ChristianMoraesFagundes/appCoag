import 'package:app_covid_2/app/data/repository/login_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final LoginRepository repository;

  LoginController(this.repository);
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  bool passwordVisivel = true;

  void setEmail(String newvalue) {
    email.text = newvalue;
  }

  void setPassword(String newvalue) {
    password.text = newvalue;
  }

  void changePasswordVisivel() {
    passwordVisivel = !passwordVisivel;
    update(['password']);
  }

  bool get valido =>
      password.text.length > 6 &&
      RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(email.text);

  void submit() {
    repository.loginComEmail(email.text, password.text);
  }

  RxBool liberado = true.obs;
}
