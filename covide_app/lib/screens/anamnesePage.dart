import 'package:covide_app/models/anamnese.dart';
import 'package:covide_app/models/questions.dart';
import 'package:covide_app/screens/homepage.dart';
import 'package:covide_app/widgets/anamnese.dart';
import 'package:covide_app/widgets/popUpInfos.dart';
import 'package:flutter/material.dart';

class Anamnese extends StatefulWidget {
  @override
  State<Anamnese> createState() => _AnamneseState();
}

class _AnamneseState extends State<Anamnese> {
  ScrollController _controllerOne = ScrollController();

  Widget listview() {
    return Scrollbar(
      controller: _controllerOne,
      isAlwaysShown: false,
      child: ListView.builder(
        controller: _controllerOne,
        itemCount: projects.length,
        itemBuilder: (BuildContext context, int index) {
          return AnamneseWidget(projects[index]);
        },
      ),
    );
  }

  Widget infos() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Text(
        'Segundo a classificação da OMS TOSSE E FEBRE valem 2 pontos' +
            '; os demais sintomas 1 ponto. Para considerar suspeita são necessários 4 pontos.',
        style: TextStyle(fontSize: 16, color: Colors.red),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        backgroundColor: Colors.green[200],
        leading: IconButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
                (route) => false);
          },
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.white,
          iconSize: 30.0,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width * 1.0,
              child: Card(
                  color: Colors.green[400],
                  elevation: 2,
                  child: Center(
                    child: Text('  Anamnese covid-19',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width * 0.9,
                color: Colors.green[200],
                child: listview()),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width * 0.7,
              child: Row(
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    'Pontos:',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Card(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: infos(),
            ),
          ],
        ),
      ),
    );
  }
}
