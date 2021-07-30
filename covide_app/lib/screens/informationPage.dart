import 'package:covide_app/screens/homepage.dart';
import 'package:covide_app/widgets/popUpInfos.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

class Information extends StatefulWidget {
  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  /*Widget buidRanking() {
    return Table(
      defaultColumnWidth: FixedColumnWidth(150.0),
      border: TableBorder(
        horizontalInside: BorderSide(
          color: Colors.transparent,
          style: BorderStyle.solid,
          width: 1.0,
        ),
        verticalInside: BorderSide(
          color: Colors.white,
          style: BorderStyle.solid,
          width: 1.0,
        ),
      ),
      children: [
        criarTituloTable("Municipio,1ª Dose,2ª Dose"),
        criarLinhaTable("SERRANA, 34185,31549 "),
        criarLinhaTable("FLORA RICA, 914,459 "),
        criarLinhaTable("ARCO-ÍRIS, 1046,548 "),
        criarLinhaTable("TURMALINA, 1143,480"),
        criarLinhaTable("A.SÃO PEDRO, 2131 ,979"),
      ],
    );
  }*/

  /*Widget buidTables() {
    return Table(
      defaultColumnWidth: FixedColumnWidth(150.0),
      border: TableBorder(
        horizontalInside: BorderSide(
          color: Colors.transparent,
          style: BorderStyle.solid,
          width: 1.0,
        ),
        verticalInside: BorderSide(
          color: Colors.white,
          style: BorderStyle.solid,
          width: 1.0,
        ),
      ),
      children: [
        criarTituloTable(
            "1ª Dose da vacina, 2ª Dose da vacina, % Pop Vacinada"),
        criarLinhaTable("16.234.138, 5.842.477,12.62 % "),
      ],
    );
  }*/

  /*criarTituloTable(String listaNomes) {
    return TableRow(
      children: listaNomes.split(',').map((name) {
        return Container(
          color: Colors.green[400],
          alignment: Alignment.center,
          child: Text(
            name,
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          padding: EdgeInsets.all(8.0),
        );
      }).toList(),
    );
  }*/

  Widget infos() {
    return Container(
      child: Text(
        'informação atualizada em 29/07/2021' +
            '\n' +
            'Fonte dos dados: https://fluxovacinacaocovid.web.app',
        style: TextStyle(fontSize: 16, color: Colors.blue),
      ),
    );
  }

  /*criarLinhaTable(String listaNomes) {
    return TableRow(
      children: listaNomes.split(',').map((name) {
        return Container(
          color: Colors.green[100],
          alignment: Alignment.center,
          child: Text(
            name,
            style: TextStyle(fontSize: 16.0),
          ),
          padding: EdgeInsets.all(8.0),
        );
      }).toList(),
    );
  }*/

  Widget buildDados() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.98,
      //height: 320,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.98,
            child: Card(
              color: Colors.green[400],
              child: Text(
                "DOSE 1",
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width * 0.98,
            child: Card(
              color: Colors.green[200],
              child: Text(
                "25.756.936 doses aplicadas",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.98,
            child: Card(
              color: Colors.green[400],
              child: Text(
                "DOSE 2",
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width * 0.98,
            child: Card(
              color: Colors.green[200],
              child: Text(
                "8.805.389 doses aplicadas",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.98,
            child: Card(
              color: Colors.green[400],
              child: Text(
                "DOSE UNICA",
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width * 0.98,
            child: Card(
              color: Colors.green[200],
              child: Text(
                "1.082.509 doses aplicadas",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void openURL() async {
    const url = 'https://fluxovacinacaocovid.web.app/todos';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      /// Não è possível abrir a URL
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        backgroundColor: Colors.green[200],
        leading: Row(
          children: [
            IconButton(
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
            SizedBox(
              width: 20,
            ),
            Text('  Informações sobre a vacinação',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.95,
            width: MediaQuery.of(context).size.width * 0.98,
            color: Colors.green[200],
            child: Column(
              children: [
                /*Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 1.0,
                  child: Card(
                    color: Colors.green[400],
                    elevation: 2,
                    child: Text('  Informações sobre a vacinação em SP',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),*/
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: infos(),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                    child: Container(
                  child: buildDados(),
                )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Card(
                    color: Colors.green[400],
                    child: Image.asset(
                      'assets/wbjq1ogv.png',
                      width: MediaQuery.of(context).size.width * 1.0,
                      height: 300.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.34,
                  child: GestureDetector(
                    onTap: openURL,
                    child: Card(
                      color: Colors.red,
                      elevation: 3,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'ver mais',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
