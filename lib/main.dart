import 'package:flutter/material.dart';

//app
import 'package:app_covid_2/app.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';

void main() async {
  runApp(MyApp());

  await Parse().initialize("h6tjGlyv6uKeNF7rxhiPnsI5oNLeoUJmWrqtKn0X",
      "https://parseapi.back4app.com",
      clientKey: "HUtG6EBnaIFJ5ynjunM3aoDOjl3Fp4Mmqb3CSLho",
      autoSendSessionId: true);
}
