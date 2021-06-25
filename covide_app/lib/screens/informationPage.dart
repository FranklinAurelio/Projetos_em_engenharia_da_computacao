import 'package:covide_app/screens/homepage.dart';
import 'package:covide_app/widgets/popUpInfos.dart';
import 'package:flutter/material.dart';

class Information extends StatefulWidget {
  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  Widget buidTables() {
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
  }

  criarTituloTable(String listaNomes) {
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
  }

  Widget infos() {
    return Container(
      child: Text(
        'informação atualizada em 23/06/2021' +
            '\n' +
            'Fonte dos dados: https://fluxovacinacaocovid.web.app',
        style: TextStyle(fontSize: 16, color: Colors.blue),
      ),
    );
  }

  criarLinhaTable(String listaNomes) {
    return TableRow(
      children: listaNomes.split(',').map((name) {
        return Container(
          color: Colors.green[100],
          alignment: Alignment.center,
          child: Text(
            name,
            style: TextStyle(fontSize: 20.0),
          ),
          padding: EdgeInsets.all(8.0),
        );
      }).toList(),
    );
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
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.95,
            width: MediaQuery.of(context).size.width * 0.98,
            color: Colors.green[200],
            child: Column(
              children: [
                Container(
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
                ),
                Container(
                  child: infos(),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Container(
                  child: buidTables(),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
