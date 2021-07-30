import 'package:covide_app/screens/docPage.dart';
import 'package:flutter/material.dart';
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
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Não esqueça de levar documento oficial com foto que contenha cpf e comprovante de residência no nome do vacinado.",
                style: TextStyle(fontSize: fontBody),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Você se enquadra em algum grupo de vacinação?",
                style:
                    TextStyle(fontSize: fontBody, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Veja aqui os documentos para seu grupo.",
                style:
                    TextStyle(fontSize: fontBody, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => Document()),
                      (route) => true);
                },
                child: Card(
                  color: Colors.yellow[800],
                  elevation: 3,
                  child: Center(
                    child: Icon(
                      Icons.file_copy_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ],
          )),
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
