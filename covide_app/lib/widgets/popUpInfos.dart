import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

class PopUpInfo extends StatefulWidget {
  @override
  _PopUpInfoState createState() => _PopUpInfoState();
}

class _PopUpInfoState extends State<PopUpInfo> {
  double fontBody = 16.0;
  double fontTitle = 20.0;
  @override
  void openURL() async {
    const url =
        'https://github.com/FranklinAurelio/Projetos_em_engenharia_da_computacao';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      /// Não è possível abrir a URL
    }
  }

  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.green[100],
      title: Text(
        "Sobre",
        style: TextStyle(fontSize: fontTitle, fontWeight: FontWeight.bold),
      ),
      content: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.8,
        child: Column(
          children: [
            Text(
              'Aplicativo desenvolvido para a matéria de Projetos em engenharia da computação' +
                  ' da UNIFESP(Universidade Federal de São Paulo)' +
                  ', como critério para aprovação na disciplina.' +
                  ' O software tem como objetivo informar, conscientizar e previnir a população a cerca do COVID-19' +
                  'através de informações de fontes confiaves e anamnése com os sintomas mais comuns da doença.',
              style: TextStyle(
                fontSize: fontBody,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              'Equipe: ',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              '- Franklin Aurelio: Graduando em ciencia da computação e BCT na UNIFESP, atuou como desenvolvedor e criador do projeto.',
              style: TextStyle(
                fontSize: fontBody,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              '- Julia Pieroni: Dentista formada pela UNESP em 2019 e mestranda em patologia pela UNESP, responsavel pela criação e revisão da anamnese.',
              style: TextStyle(
                fontSize: fontBody,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              'Detalhes técnicos: ',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              'Aplicativo desenvolvido em Dart, com framework Flutter, juntamente com Python, C++, swift e kotlin' +
                  ' o software é open source, disponivel na plataforma Github para contribuiçõe.',
              style: TextStyle(
                fontSize: fontBody,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Email para contato:',
              style: TextStyle(
                fontSize: fontBody,
                color: Colors.black,
              ),
            ),
            Text(
              'franklinarcj@gmail.com',
              style: TextStyle(
                  fontSize: fontBody,
                  color: Colors.blue,
                  decoration: TextDecoration.underline),
            ),
          ],
        ),
      ),
      actions: [
        FlatButton(
          color: Colors.green[800],
          child: Text(
            "Ok",
            style: TextStyle(fontSize: 18.0, color: Colors.white),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        FlatButton(
            color: Colors.black,
            child: Text(
              "Github",
              style: TextStyle(fontSize: 18.0, color: Colors.white),
            ),
            onPressed: openURL),
      ],
    );
  }
}
