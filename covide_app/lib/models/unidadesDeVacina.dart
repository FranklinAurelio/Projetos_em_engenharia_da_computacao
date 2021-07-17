import 'package:covide_app/models/dados.dart';
import 'package:flutter/material.dart';

//listar as unidades de vacinação e seus dados
//inicialmente vou colocar 5 UBSs de cada regiao para implementar a IA
//Depois vou adicionando as outras

//DADOS PEGOS DO SITE DA PREFEITURA DE SJC
final List<Dados> projects = [
//casas do idoso
  Dados(
      name: "Casa do idoso centro",
      cep: "12245-820",
      localization: [-23.1924573, -45.8895921],
      qtdOfDose: 0,
      distance: 0,
      espediente: "das 08h as 17h"),
  Dados(
      name: "Casa do idoso sul",
      cep: "12233-000",
      localization: [-23.2358926, -45.8859912],
      qtdOfDose: 0,
      distance: 0,
      espediente: "das 08h as 17h"),
  Dados(
      name: "Casa do idoso leste",
      cep: "12223-600",
      localization: [-23.1763983, -45.8237056],
      qtdOfDose: 0,
      distance: 0,
      espediente: "das 08h as 17h"),
  Dados(
      name: "Casa do idoso norte",
      cep: "12212-050",
      localization: [-23.1606818, -45.8982427],
      qtdOfDose: 0,
      distance: 0,
      espediente: "das 08h as 17h"),
//UBSs
//Centro
  Dados(
      name: "UBS centro I",
      cep: "12210-140",
      localization: [-23.1824219, -45.8860214],
      qtdOfDose: 0,
      distance: 0,
      espediente: "das 07h as 18h"),
  Dados(
      name: "UBS centro II",
      cep: "12242-280",
      localization: [-23.1929775, -45.9058774],
      qtdOfDose: 0,
      distance: 0,
      espediente: "das 07h as 18h"),
  Dados(
      name: "UBS Jardim Paulista",
      cep: "12215-600",
      localization: [-23.1902997, -45.8724179],
      qtdOfDose: 0,
      distance: 0,
      espediente: "das 07h as 18h"),
  Dados(
      name: "UBS Vila Maria",
      cep: "12209-280",
      localization: [-23.1771095, -45.8810915],
      qtdOfDose: 0,
      distance: 0,
      espediente: "das 07h as 18h"),
//Leste
  Dados(
      name: "UBS Americano",
      cep: "12225-100",
      localization: [-23.1796288, -45.8141392],
      qtdOfDose: 0,
      distance: 0,
      espediente: "das 07h as 18h"),
  Dados(
      name: "UBS Campos de São Jose",
      cep: "12226-390",
      localization: [-23.2149531, -45.8103352],
      qtdOfDose: 0,
      distance: 0,
      espediente: "das 07h as 18h"),
  Dados(
      name: "UBS Eugênio de Melo",
      cep: "12247-550",
      localization: [-23.1335521, -45.7721809],
      qtdOfDose: 0,
      distance: 0,
      espediente: "das 07h as 18h"),
  Dados(
      name: "UBS São José II",
      cep: "12248-674",
      localization: [-23.1689586, -45.7795679],
      qtdOfDose: 0,
      distance: 0,
      espediente: "das 07h as 18h"),
  Dados(
      name: "UBS Nova Detroit",
      cep: "12224-370",
      localization: [-23.1699046, -45.8155688],
      qtdOfDose: 0,
      distance: 0,
      espediente: "das 07h as 18h"),
//Norte
  Dados(
      name: "UBS Altos de Santana",
      cep: "12214-010",
      localization: [-23.167976, -45.9169202],
      qtdOfDose: 0,
      distance: 0,
      espediente: "das 07h as 18h"),
  Dados(
      name: "UBS Bonsucesso",
      cep: " ",
      localization: [-23.1625496, -45.9276946],
      qtdOfDose: 0,
      distance: 0,
      espediente: "das 07h as 18h"),
  Dados(
      name: "UBS Buquirinha",
      cep: "12213-790",
      localization: [-23.1614058, -45.9257962],
      qtdOfDose: 0,
      distance: 0,
      espediente: "das 07h as 18h"),
  Dados(
      name: "UBS Alto da Ponte",
      cep: "12213-790",
      localization: [-23.1522659, -45.9023237],
      qtdOfDose: 0,
      distance: 0,
      espediente: "das 07h as 18h"),
  Dados(
      name: "UBS Santana",
      cep: "12212-000",
      localization: [-23.1587399, -45.9005992],
      qtdOfDose: 0,
      distance: 0,
      espediente: "das 07h as 18h"),
];
