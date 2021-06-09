import 'package:app_covid_2/app/modules/login/login_controller.dart';
import 'package:app_covid_2/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _visivel = true;

  @override
  Widget build(BuildContext context) {
    final urlImage = 'assets/imagens/logo_inovarTI.png';

    return Scaffold(
      backgroundColor: Color(0xFFf4511e),
      //appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: GetBuilder(
            init: Get.find<LoginController>(),
            builder: (_) {
              return ListView(
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
                  _inputSenha(),
                  Divider(),
                  //_criarPessoa(),
                  _botao(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _inputEmail() {
    return GetBuilder<LoginController>(
      builder: (_) {
        return TextFormField(
          decoration: InputDecoration(
            hintText: 'exemplo@educadventista.org',
            hintStyle: TextStyle(color: Colors.black),
            labelText: 'Login',
            labelStyle: TextStyle(color: Colors.black),
            fillColor: Colors.white,
            filled: true,
          ),
          onChanged: (valor) {
            _.setEmail(valor);
          },
        );
      },
    );
  }

  Widget _inputSenha() {
    return GetBuilder<LoginController>(
      id: 'password',
      builder: (_) {
        return TextFormField(
          obscureText: _.passwordVisivel,
          decoration: InputDecoration(
            labelText: 'Senha',
            labelStyle: TextStyle(color: Colors.black),
            suffixIcon: _botaoSenha(),
            fillColor: Colors.white,
            filled: true,
          ),
          onChanged: _.setPassword,
        );
      },
    );
  }

  Widget _botaoSenha() {
    return GetBuilder<LoginController>(
      builder: (_) {
        return GestureDetector(
          child: Icon(Icons.remove_red_eye),
          onTap: _.changePasswordVisivel,
        );
      },
    );
  }

  Widget _botao() {
    return GetBuilder<LoginController>(
      builder: (_) {
        return Container(
          padding: EdgeInsets.all(10),
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
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
              ),
            ),
            style: flatButtonStyle,
            onPressed: () {
              if (_.valido) {
                Get.offNamed(Routes.HOME);
              } else {
                Get.snackbar("Ops.", "Dados inválidos",
                    backgroundColor: Colors.red[200]);
              }
            },
          ),
        );
      },
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
