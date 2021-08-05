import 'package:covide_app/models/unidadesDeVacina.dart';
import 'package:covide_app/widgets/mapUbs.dart';
import 'package:flutter/material.dart';
import 'package:covide_app/screens/docPage.dart';
import 'dart:async';

class PopUpList extends StatefulWidget {
  @override
  _PopUpListState createState() => _PopUpListState();
}

class _PopUpListState extends State<PopUpList> {
  ScrollController _controllerTwo = ScrollController();
  double fontBody = 16.0;
  double fontTitle = 20.0;

  Widget listviewUbs() {
    return Scrollbar(
      controller: _controllerTwo,
      isAlwaysShown: false,
      child: ListView.builder(
        controller: _controllerTwo,
        itemCount: ubs.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 60,
            child: GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UbsMap(
                              index: index,
                            )),
                    (route) => true);
              },
              child: Card(
                  elevation: 3,
                  color: Colors.green[100],
                  child: Column(
                    children: [
                      Text(
                        ubs[index].name,
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  )),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.green[400],
      title: Text(
        "Escolha o ponto de vacinação",
        style: TextStyle(
            fontSize: fontTitle,
            fontWeight: FontWeight.bold,
            color: Colors.black),
      ),
      content: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.8,
        child: listviewUbs(),
      ),
      actions: [
        FlatButton(
          color: Colors.green[800],
          child: Text(
            "Cancelar",
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
