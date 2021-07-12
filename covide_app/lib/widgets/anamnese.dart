import 'package:covide_app/models/anamnese.dart';
import 'package:covide_app/widgets/switch.dart';
import 'package:flutter/material.dart';

class AnamneseWidget extends StatelessWidget {
  final Project _project;

  AnamneseWidget(this._project);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    //bool isSwitched = false;
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 80,
      child: Card(
          color: Colors.green[400],
          child: Center(
              child: Column(
            children: [
              Text(
                _project.question,
                style: TextStyle(fontSize: 16),
              ),
              //SwitchSelect()
            ],
          ))),
    );
  }
}
