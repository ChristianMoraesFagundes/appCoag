import 'package:flutter/material.dart';

//imports de outras classes
import 'package:app_covid_2/src/widgets/bottomNavigationBar.dart';

class SuspeitosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de suspeitos'),
        backgroundColor: Color(0xFF8199fa),
      ),
      body: _Lista(),
      bottomNavigationBar: BottonNavBar(),
    );
  }
}

Widget _Lista() {
  return ListView(children: [
    _Tile('fulano '),
    Divider(),
    _Tile('fulano '),
    Divider(),
  ]);
}

Widget _Tile(String nomeFuncionario) {
  return ListTile(
    title: Text(
      nomeFuncionario,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    trailing: Icon(
      Icons.arrow_forward_ios_outlined,
      color: Color(0xFFf4511e),
    ),
    onTap: () {},
  );
}
