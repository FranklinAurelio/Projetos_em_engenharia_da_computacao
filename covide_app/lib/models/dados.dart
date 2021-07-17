import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Dados {
  String name;
  String cep;
  List<double> localization;
  int qtdOfDose;
  double distance;
  String espediente;
  Dados({
    required this.cep,
    required this.distance,
    required this.localization,
    required this.qtdOfDose,
    required this.name,
    required this.espediente,
  });
}
