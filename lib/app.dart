import 'package:app_covid_2/app/data/providers/user_provider.dart';
import 'package:app_covid_2/app/data/repository/user_respository.dart';
import 'package:app_covid_2/app/global/controllers/user_controller.dart';
import 'package:app_covid_2/app/modules/splash/splash_binding.dart';
import 'package:app_covid_2/app/modules/splash/splash_page.dart';
import 'package:app_covid_2/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
//import 'package:app_covid/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = UserProvider();
    UserRepository userRepository = UserRepository(userProvider);
    Get.put<UserController>(UserController(userRepository));
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      initialRoute: Routes.INITIAL,
      getPages: AppPages.pages,
      initialBinding: SplashBinding(),
      home: Center(
        child: SplashPage(),
      ),
    );
  }
}
