import 'package:get/get.dart';

class MyController extends GetxController {
//final MyRepository repository;
//MyController({@required this.repository}) : assert(repository != null);

  final _mark = false.obs;
  //set setMark(bool value) => this._mark.value = value;
  get mark => this._mark.value;

  void setMark(bool valor) {
    this._mark.value = valor;
  }
}
