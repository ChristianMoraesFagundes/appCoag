import 'package:app_covid_2/app/modules/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder(
            init: Get.find<SplashController>(),
            builder: (_) {
              return Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.orange[800],
                child: Center(
                  child: CircleAvatar(
                      radius: 150.0,
                      child: ClipOval(
                        child: Image.asset('assets/imagens/logo_inovarTI.png'),
                      )),
                ),
              );
            }));
  }
}
