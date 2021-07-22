import 'package:covide_app/screens/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //static const mapKey =
  //"pk.eyJ1IjoiZnJhbmtsaW4xMjM0IiwiYSI6ImNrcmZldjF1bzI5bWMyeG5qbjR4OGVqeHEifQ.nUEnXDrmpdB0bGrEBd_EEQ";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid app',
      home: MyHomePage(),
    );
  }
}
