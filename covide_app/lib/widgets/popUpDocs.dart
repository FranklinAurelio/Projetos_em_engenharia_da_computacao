import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

class PopUpDocs extends StatefulWidget {
  @override
  _PopUpDocsState createState() => _PopUpDocsState();
}

class _PopUpDocsState extends State<PopUpDocs> {
  double fontBody = 16.0;
  double fontTitle = 20.0;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.green[100],
      title: Text(
        "Importante!",
        style: TextStyle(
            fontSize: fontTitle,
            fontWeight: FontWeight.bold,
            color: Colors.red),
      ),
      content: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.4,
        child: Container(
          child: Center(
            child: Text(
              "Não esqueça de levar documento oficial com foto que contenha cpf e comprovante de residência no nome do vacinado",
              style: TextStyle(fontSize: fontBody),
            ),
          ),
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
      ],
    );
  }
}
