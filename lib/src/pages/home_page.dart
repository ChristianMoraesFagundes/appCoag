import 'package:flutter/material.dart';

//imports de outras classes
import 'package:app_covid_2/src/pages/confirmacao_diaria_page.dart';
import 'package:app_covid_2/src/pages/suspeitos_page.dart';
import 'package:app_covid_2/src/widgets/bottomNavigationBar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    elevation: 20.0,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
  );
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario de Saúde'),
        centerTitle: true,
        backgroundColor: Color(0xFF8199fa),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _cardSintomas(),
            SizedBox(
              height: 30.0,
            ),
            _cardTipo2(),
            SizedBox(
              height: 30.0,
            ),
            _cardTipo3(),
            SizedBox(
              height: 30.0,
            ),
            _cardTipo4(),
            SizedBox(
              height: 30.0,
            ),
            _botao(flatButtonStyle, context),
            SizedBox(
              height: 30.0,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottonNavBar(),
    );
  }
}

Widget _cardSintomas() {
  return Card(
    margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
    elevation: 10.0,
    child: Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(right: 20.0, left: 20.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('Febre'),
            Switch(
              activeColor: Color(0xFFf4511e),
              value: false,
              onChanged: (valor) {},
            ),
          ]),
        ),
        Container(
          padding: EdgeInsets.only(right: 20.0, left: 20.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('Tosse'),
            Switch(
              activeColor: Color(0xFFf4511e),
              value: false,
              onChanged: (valor) {},
            ),
          ]),
        ),
        Container(
          padding: EdgeInsets.only(right: 20.0, left: 20.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('Indisposição física'),
            Switch(
              activeColor: Color(0xFFf4511e),
              value: false,
              onChanged: (valor) {},
            ),
          ]),
        ),
        Container(
          padding: EdgeInsets.only(right: 20.0, left: 20.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('Diarreia'),
            Switch(
              activeColor: Color(0xFFf4511e),
              value: false,
              onChanged: (valor) {},
            ),
          ]),
        ),
        Container(
          padding: EdgeInsets.only(right: 20.0, left: 20.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('Coriza'),
            Switch(
              activeColor: Color(0xFFf4511e),
              value: false,
              onChanged: (valor) {},
            ),
          ]),
        ),
        Container(
          padding: EdgeInsets.only(right: 20.0, left: 20.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('Dificuldade respiratória'),
            Switch(
              activeColor: Color(0xFFf4511e),
              value: false,
              onChanged: (valor) {},
            ),
          ]),
        ),
        Container(
          padding: EdgeInsets.only(right: 20.0, left: 20.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('Perda de olfato e/ou paladar'),
            Switch(
              activeColor: Color(0xFFf4511e),
              value: false,
              onChanged: (valor) {},
            ),
          ]),
        ),
      ],
    ),
  );
}

Widget _cardTipo2() {
  return Card(
    margin: EdgeInsets.only(
      left: 20.0,
      right: 20.0,
    ),
    elevation: 10.0,
    child: Column(
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.all(20.0),
          subtitle: Text(
              'Esteve em contato presencial com pessoas infectadas, seja em sua própria casa ou em outro local, nos últimos 14 (quatorze) dias? '),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 80.0,
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(children: [
                  Checkbox(
                    value: true,
                    onChanged: (valor) {},
                    activeColor: Color(0xFFf4511e),
                  ),
                  Text('Sim'),
                ]),
                Row(children: [
                  Checkbox(
                    value: true,
                    onChanged: (valor) {},
                    activeColor: Color(0xFFf4511e),
                  ),
                  Text('Não'),
                ]),
              ]),
        ),
      ],
    ),
  );
}

Widget _cardTipo3() {
  return Card(
    margin: EdgeInsets.only(
      left: 20.0,
      right: 20.0,
    ),
    elevation: 10.0,
    child: Column(
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.all(20.0),
          subtitle: Text(
              'Frequentou alguma reunião/evento/aglomeração sem observar os devidos cuidados e as medidas de proteção e distanciamento recomendáveis, nos últimos 14 (quatorze) dias?'),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 80.0,
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(children: [
                  Checkbox(
                    value: true,
                    onChanged: (valor) {},
                    activeColor: Color(0xFFf4511e),
                  ),
                  Text('Sim'),
                ]),
                Row(children: [
                  Checkbox(
                    value: true,
                    onChanged: (valor) {},
                    activeColor: Color(0xFFf4511e),
                  ),
                  Text('Não'),
                ]),
              ]),
        ),
      ],
    ),
  );
}

Widget _cardTipo4() {
  return Card(
    margin: EdgeInsets.only(
      left: 20.0,
      right: 20.0,
    ),
    elevation: 10.0,
    child: Column(
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.all(20.0),
          subtitle: Text(
              'Declaro, ainda, que caso apresente qualquer sintoma sugestivo de infecção pelo SARS-CoV-2 ou tenha ciência da infecção pelo vírus de pessoa com quem convivo sob o mesmo teto ou tive contato pessoal e com proximidade física sem observar a distância mínima ou estive presente em alguma reunião/evento/aglomeração sem a devidas proteções sanitárias e distanciamento recomendáveis, não comparecerei ao local de trabalho e comunicarei imediatamente tal fato ao empregador para a adoção das medidas necessárias.Declaro ter ciência que a falta da adoção das medidas preventivas sanitárias recomendadas, dentro e fora do local de trabalho, também podem caracterizar falta grave, passível de demissão por justa causa.As declarações e respostas apresentadas no presente questionário são verídicas e responsabilizo-me por eventual omissão ou falsidade, ainda declaro estar ciente de que a omissão ou falsidade das informações configurará falta grave, sujeitando-me a demissão por justa causa.'),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 80.0,
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(children: [
                  Checkbox(
                    value: true,
                    onChanged: (valor) {},
                    activeColor: Color(0xFFf4511e),
                  ),
                  Text('Ciente'),
                ]),
              ]),
        ),
      ],
    ),
  );
}

Widget _botao(ButtonStyle flatButtonStyle, BuildContext context) {
  return Container(
    width: 200.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50.0),
          topLeft: Radius.circular(50.0),
          bottomRight: Radius.circular(50.0),
          topRight: Radius.circular(50.0)),
      color: Color(0xFF81d4fa),
    ),
    child: TextButton(
      child: Text(
        'Salvar',
        style: TextStyle(color: Colors.black, fontSize: 15.0),
      ),
      style: flatButtonStyle,
      onPressed: () {
        //rota temporaria
        final route = MaterialPageRoute(builder: (context) {
          return ConfirmacaoDiariaPage();
        });

        Navigator.push(context, route);
      },
    ),
  );
}
