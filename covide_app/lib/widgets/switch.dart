import 'package:flutter/material.dart';

class SwitchSelect extends StatefulWidget {
  @override
  _SwitchSelectState createState() => _SwitchSelectState();
}

class _SwitchSelectState extends State<SwitchSelect> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Switch(
        value: isSwitched,
        onChanged: (value) {
          setState(() {
            isSwitched = value;
            print(isSwitched);
          });
        },
        activeTrackColor: Colors.yellow,
        activeColor: Colors.orangeAccent,
      ),
    ));
  }
}
