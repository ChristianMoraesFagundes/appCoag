import 'package:flutter/material.dart';

//Pages
import 'package:app_covid_2/src/pages/login_page.dart';
//import 'package:app_covid/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Center(
        child: LoginPage(),
      ),
    );
  }
}
