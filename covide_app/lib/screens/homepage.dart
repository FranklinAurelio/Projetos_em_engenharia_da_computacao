import 'package:covide_app/screens/IApage.dart';
import 'package:covide_app/screens/anamnesePage.dart';
import 'package:covide_app/screens/informationPage.dart';
import 'package:covide_app/widgets/popUpDocs.dart';
import 'package:covide_app/widgets/popUpInfos.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.95,
          width: MediaQuery.of(context).size.width * 0.9,
          color: Colors.green[200],
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                height: 250,
                width: 250,
                child: Image.asset(
                  'assets/corona-4931132_1280.png',
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Information()),
                          (route) => true);
                    },
                    child: Card(
                      color: Colors.green[400],
                      elevation: 3,
                      child: Center(
                        child: Text(
                          'Informações',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => Anamnese()),
                          (route) => true);
                    },
                    child: Card(
                      color: Colors.green[400],
                      elevation: 3,
                      child: Center(
                        child: Text(
                          'Anamnese',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: GestureDetector(
                    onTap: () async {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => IA()),
                          (route) => true);
                      await showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return PopUpDocs();
                          });
                    },
                    child: Card(
                      color: Colors.green[400],
                      elevation: 3,
                      child: Center(
                        child: Text(
                          'Buscar ponto de vacinação',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Card(
                    color: Colors.teal,
                    child: IconButton(
                      onPressed: () async {
                        await showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return PopUpInfo();
                            });
                      },
                      icon: Icon(Icons.info_outline_rounded),
                      color: Colors.white,
                      iconSize: 30.0,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
