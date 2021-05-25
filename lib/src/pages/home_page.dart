import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Formulario'),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            _cardTipo1(),
            SizedBox(
              height: 30.0,
            ),
            _cardTipo1(),
            SizedBox(
              height: 30.0,
            ),
            _cardTipo1(),
            SizedBox(
              height: 30.0,
            ),
            _cardTipo1(),
            SizedBox(
              height: 30.0,
            ),
            _cardTipo1(),
            SizedBox(
              height: 30.0,
            ),
            _cardTipo1(),
            SizedBox(
              height: 30.0,
            ),
            _cardTipo1(),
            SizedBox(
              height: 30.0,
            ),
            _cardTipo1(),
          ],
        ));
  }
}

Widget _cardTipo1() {
  return Card(
    elevation: 10.0,
    child: Column(
      children: <Widget>[
        ListTile(
          title: Text('Pergunta 1'),
          subtitle: Text(
              'Esteve em contato presencial com pessoas infectadas, seja em sua própria casa ou em outro local, nos últimos 14 (quatorze) dias? '),
        )
      ],
    ),
  );
}
