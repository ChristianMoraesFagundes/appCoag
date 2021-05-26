import 'dart:ui';

import 'package:app_covid_2/src/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _login = '';
  String _senha = '';
  bool _visivel = true;

  @override
  Widget build(BuildContext context) {
    final urlImage = 'assets/imagens/logo_inovarTI.png';

    return Scaffold(
      backgroundColor: Color(0xFFf4511e),
      //appBar: AppBar(),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          children: <Widget>[
            CircleAvatar(
                radius: 30.0,
                child: ClipOval(
                  child: Image.asset(urlImage),
                )),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'TRIAGEM DE CONDIÇÕES CLÍNICO-EPIDEMIOLÓGICAS DO TRABALHADOR',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
            ),
            Divider(),
            _inputEmail(),
            Divider(),
            _inputSenha(() {
              setState(() {
                _visivel = !_visivel;
              });
              print('funcionou');
            }, _visivel),
            Divider(),
            //_criarPessoa(),
            _botao(),
          ],
        ),
      ),
    );
  }

  Widget _inputEmail() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'exemplo@educadventista.org',
        hintStyle: TextStyle(color: Colors.black),
        labelText: 'Login',
        labelStyle: TextStyle(color: Colors.black),
        fillColor: Colors.white,
        filled: true,
      ),
      onChanged: (valor) {
        setState(() {
          _login = valor;
        });
      },
    );
  }

  Widget _inputSenha(Function funcao, bool _visivel) {
    return TextField(
      obscureText: _visivel,
      decoration: InputDecoration(
        labelText: 'Senha',
        labelStyle: TextStyle(color: Colors.black),
        suffixIcon: _botao_senha(funcao, _visivel),
        fillColor: Colors.white,
        filled: true,
      ),
      onChanged: (valor) {
        setState(() {
          _senha = valor;
        });
      },
    );
  }

  Widget _botao_senha(Function funcao, bool _visivel) {
    return GestureDetector(
      child: Icon(Icons.remove_red_eye),
      onTap: () {
        funcao();
      },
    );
  }

  Widget _criarPessoa() {
    return ListTile(
      title: Text('Login:  $_login'),
      subtitle: Text('Senha: $_senha'),
    );
  }

  Widget _botao() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50.0),
            topLeft: Radius.circular(50.0),
            bottomRight: Radius.circular(50.0),
            topRight: Radius.circular(50.0)),
        color: Color(0xFF03DAC5),
      ),
      child: TextButton(
        child: Text(
          'ACESSAR',
          style: TextStyle(color: Colors.black, fontSize: 15.0),
        ),
        style: flatButtonStyle,
        onPressed: () {
          final route = MaterialPageRoute(builder: (context) {
            return HomePage();
          });

          Navigator.pushReplacement(context, route);
        },
      ),
    );
  }

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
  );
}
