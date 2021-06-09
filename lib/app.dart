import 'package:app_covid_2/app/modules/login/login_binding.dart';
import 'package:app_covid_2/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

//Pages
import 'package:app_covid_2/app/modules/login/login_page.dart';
import 'package:get/get.dart';
//import 'package:app_covid/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      initialRoute: Routes.LOGIN,
      getPages: AppPages.pages,
      initialBinding: LoginBinding(),
      home: Center(
        child: LoginPage(),
      ),
    );
  }
}
