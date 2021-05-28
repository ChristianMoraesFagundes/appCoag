import 'package:flutter/material.dart';

//imports de paginas
import 'package:app_covid_2/src/widgets/bottomNavigationBar.dart';

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
      ),
      bottomNavigationBar: BottonNavBar(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50.0),
              topLeft: Radius.circular(50.0),
              bottomRight: Radius.circular(50.0),
              topRight: Radius.circular(50.0)),
          color: Color(0xFF8199fa),
        ),
        //color: Color(0xFF8199fa),
        child: TextButton(
          onPressed: () => showDialog<String>(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) => AlertDialog(
              elevation: 20.0,
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
          child: const Text(
            'Confirmar estado clínico',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ));
  }
}
