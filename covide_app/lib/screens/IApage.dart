import 'package:covide_app/main.dart';
import 'package:covide_app/models/unidadesDeVacina.dart';
import 'package:covide_app/screens/homepage.dart';
import 'package:covide_app/widgets/mapPage.dart';
import 'package:covide_app/widgets/popUpInfos.dart';
import 'package:flutter/material.dart';

class IA extends StatefulWidget {
  @override
  State<IA> createState() => _IAState();
}

class _IAState extends State<IA> {
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
        child: Container(
          height: MediaQuery.of(context).size.height * 0.95,
          width: MediaQuery.of(context).size.width,
          color: Colors.green[200],
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width * 0.9,
                //child: UserLocalization(),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                //color: Colors.white,
                height: 150,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Card(
                  color: Colors.green[400],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Recomendamos a " + ubs[0].name,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "cep: " + ubs[0].cep,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "aberta " + ubs[0].espediente,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
