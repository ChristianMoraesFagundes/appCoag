import 'package:flutter/material.dart';

class ConfirmacaoDiariaPage extends StatefulWidget {
  @override
  _ConfirmacaoDiariaPageState createState() => _ConfirmacaoDiariaPageState();
}

class _ConfirmacaoDiariaPageState extends State<ConfirmacaoDiariaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Confirmação diária'),
          centerTitle: true,
          backgroundColor: Color(0xFF8199fa),
        ),
        body: const Center(
          child: MyStatelessWidget(),
        ));
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Confirmação diária'),
          content: const Text(
              'Houve alguma mudança na sua situação clínica desde o preenchimento do formulário?'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Não'),
              child: const Text('Não'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'Sim'),
              child: const Text('Sim'),
            ),
          ],
        ),
      ),
      child: const Text('Show Dialog'),
    );
  }
}
