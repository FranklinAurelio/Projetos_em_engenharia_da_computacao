import 'package:covide_app/screens/homepage.dart';
import 'package:covide_app/widgets/popUpInfos.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

import 'IApage.dart';

class Document extends StatefulWidget {
  @override
  State<Document> createState() => _DocumentState();
}

class _DocumentState extends State<Document> {
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
                    MaterialPageRoute(builder: (context) => IA()),
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
        scrollDirection: Axis.vertical,
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
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Documentos necessários para vacinação",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Text("Profissionais da saúde",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('- Carteira do conselho de classe,' +
                    ' comprovante de que a inscrição no conselho está ativa' +
                    ' comprovante de residência ou correspondência em São José dos Campos.'),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Text("Pessoas com comorbidades",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                    '- Relatório médico com especificação da comorbidade ou receita médica (pelo menos dos últimos 12 meses) com CRM legível'),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Text(
                      "Pessoas com deficiência permanente de 18 anos ou mais",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('- Laudo médico que indique a deficiência ou ' +
                    'Comprovação de atendimento em centro de reabilitação ou unidade especializada ou' +
                    'Documento oficial com a identificação da deficiência.'),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Text("Gestantes e puérperas",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                    '- Cartão de pré-natal atualizado (grávidas) e certidão de nascimento da criança (puérperas).'),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Text("Profissionais da educação com 18 anos ou mais",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                    '- Comprovante impresso do QR-code (cadastro estadual Vacina Já).'),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Text(
                      "Motoristas e cobradores do transporte público coletivo urbano e aeroportuário",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                    '- Comprovante impresso do QR code do cadastro estadual Vacina Já'),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Text("Acamados com 18 anos ou mais",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                    '- Relatório médico com especificação da comorbidade definida que leva à condição de acamado ou receita médica (pelo menos dos últimos 12 meses) com CRM legível'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
