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
  //bool isSwitched = false;
  ScrollController _controllerOne = ScrollController();
  final List<bool> isSwitched = <bool>[];
  int pontos = 0;

  void addListSwitch() {
    for (var i = 0; i < 24; i++) {
      this.isSwitched.add(false);
    }
  }

  @override
  initState() {
    for (var i = 0; i < projects.length; i++) {
      projects[i].answer = false;
    }
    pontos = 0;
    super.initState();
  }

  Widget listview() {
    return Scrollbar(
      controller: _controllerOne,
      isAlwaysShown: false,
      child: ListView.builder(
        controller: _controllerOne,
        itemCount: projects.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              color: Colors.green[100],
              child: Column(
                children: [
                  AnamneseWidget(
                    projects[index],
                  ),
                  Switch(
                    value: projects[index].answer,
                    onChanged: (value) {
                      setState(() {
                        projects[index].answer = value;
                        if (projects[index].answer == true) {
                          pontos = pontos + projects[index].valor;
                        } else {
                          pontos = pontos - projects[index].valor;
                        }
                        print(pontos);
                      });
                    },
                    activeTrackColor: Colors.cyan,
                    activeColor: Colors.teal[700],
                  )
                ],
              ));
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
                  this.pontos < 4
                      ? Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Card(
                              color: Colors.white,
                              child: Center(
                                child: Text(
                                  this.pontos.toString(),
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                        )
                      : Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Card(
                              color: Colors.white,
                              child: Center(
                                child: Text(
                                  this.pontos.toString(),
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                        )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            this.pontos < 4
                ? Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: GestureDetector(
                      onTap: () async {
                        await showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(
                                  'IMPORTANTE',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                ),
                                content: Text(
                                    'Indicamos que você espere em casa até que os sintômas amenizem, caso persistam procure o médico imediatamente,' +
                                        ' mas vale ressaltar que esse diagnostico prévio não substitui um diagnostico médico',
                                    style: TextStyle(
                                      fontSize: 16,
                                    )),
                                actions: [
                                  FlatButton(
                                    color: Colors.green[400],
                                    child: Text(
                                      "OK",
                                      style: TextStyle(fontSize: 14.0),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  )
                                ],
                              );
                            });
                      },
                      child: Card(
                        color: Colors.teal[800],
                        elevation: 3,
                        child: Center(
                          child: Text(
                            'Finalizar',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ))
                : Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: GestureDetector(
                      onTap: () async {
                        await showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(
                                  'IMPORTANTE',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                ),
                                content: Text(
                                    'Indicamos que você procure a unidade médica mais próxima,' +
                                        ' mas vale ressaltar que esse diagnostico prévio não substitui um diagnostico médico',
                                    style: TextStyle(
                                      fontSize: 16,
                                    )),
                                actions: [
                                  FlatButton(
                                    color: Colors.green[400],
                                    child: Text(
                                      "OK",
                                      style: TextStyle(fontSize: 14.0),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  )
                                ],
                              );
                            });
                      },
                      child: Card(
                        color: Colors.teal[800],
                        elevation: 3,
                        child: Center(
                          child: Text(
                            'Finalizar',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
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
