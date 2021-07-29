import 'package:covide_app/models/dados.dart';
import 'package:flutter/material.dart';

//listar as unidades de vacinação e seus dados
//inicialmente vou colocar 5 UBSs de cada regiao para implementar a IA
//Depois vou adicionando as outras

int totalDoses = 626125;
//DADOS PEGOS DO SITE DA PREFEITURA DE SJC
final List<Dados> ubs = [
//casas do idoso
  Dados(
      name: "Casa do idoso centro",
      cep: "12245-820",
      localization: [-23.1924573, -45.8895921],
      qtdOfDose: (totalDoses * 0.009),
      distance: 0,
      espediente: "das 08h as 17h"),
  Dados(
      name: "Casa do idoso sul",
      cep: "12233-000",
      localization: [-23.2358926, -45.8859912],
      qtdOfDose: (totalDoses * 0.043),
      distance: 0,
      espediente: "das 08h as 17h"),
  Dados(
      name: "Casa do idoso leste",
      cep: "12223-600",
      localization: [-23.1763983, -45.8237056],
      qtdOfDose: (totalDoses * 0.015),
      distance: 0,
      espediente: "das 08h as 17h"),
  Dados(
      name: "Casa do idoso norte",
      cep: "12212-050",
      localization: [-23.1606818, -45.8982427],
      qtdOfDose: (totalDoses * 0.002),
      distance: 0,
      espediente: "das 08h as 17h"),
//UBSs
//Centro
  Dados(
      name: "UBS centro I",
      cep: "12210-140",
      localization: [-23.1824219, -45.8860214],
      qtdOfDose: (totalDoses * 0.009),
      distance: 0,
      espediente: "das 07h as 18h"),
  Dados(
      name: "UBS centro II",
      cep: "12242-280",
      localization: [-23.1929775, -45.9058774],
      qtdOfDose: (totalDoses * 0.01),
      distance: 0,
      espediente: "das 07h as 18h"),
  Dados(
      name: "UBS Jardim Paulista",
      cep: "12215-600",
      localization: [-23.1902997, -45.8724179],
      qtdOfDose: (totalDoses * 0.002),
      distance: 0,
      espediente: "das 07h as 18h"),
  Dados(
      name: "UBS Vila Maria",
      cep: "12209-280",
      localization: [-23.1771095, -45.8810915],
      qtdOfDose: (totalDoses * 0.012),
      distance: 0,
      espediente: "das 07h as 18h"),
//Leste
  Dados(
      name: "UBS Americano",
      cep: "12225-100",
      localization: [-23.1796288, -45.8141392],
      qtdOfDose: (totalDoses * 0.005),
      distance: 0,
      espediente: "das 07h as 18h"),
  Dados(
      name: "UBS Campos de São Jose",
      cep: "12226-390",
      localization: [-23.2149531, -45.8103352],
      qtdOfDose: (totalDoses * 0.013),
      distance: 0,
      espediente: "das 07h as 18h"),
  Dados(
      name: "UBS Eugênio de Melo",
      cep: "12247-550",
      localization: [-23.1335521, -45.7721809],
      qtdOfDose: (totalDoses * 0.004),
      distance: 0,
      espediente: "das 07h as 18h"),
  Dados(
      name: "UBS São José II",
      cep: "12248-674",
      localization: [-23.1689586, -45.7795679],
      qtdOfDose: (totalDoses * 0.009),
      distance: 0,
      espediente: "das 07h as 18h"),
  Dados(
      name: "UBS Nova Detroit",
      cep: "12224-370",
      localization: [-23.1699046, -45.8155688],
      qtdOfDose: (totalDoses * 0.004),
      distance: 0,
      espediente: "das 07h as 18h"),
//Norte
  Dados(
      name: "UBS Altos de Santana",
      cep: "12214-010",
      localization: [-23.167976, -45.9169202],
      qtdOfDose: (totalDoses * 0.024),
      distance: 0,
      espediente: "das 07h as 18h"),
  Dados(
      name: "UBS Bonsucesso",
      cep: " ",
      localization: [-23.1625496, -45.9276946],
      qtdOfDose: (totalDoses * 0.007),
      distance: 0,
      espediente: "das 07h as 18h"),
  Dados(
      name: "UBS Buquirinha",
      cep: "12213-790",
      localization: [-23.1614058, -45.9257962],
      qtdOfDose: (totalDoses * 0.001),
      distance: 0,
      espediente: "das 07h as 18h"),
  Dados(
      name: "UBS Alto da Ponte",
      cep: "12213-790",
      localization: [-23.1522659, -45.9023237],
      qtdOfDose: (totalDoses * 0.005),
      distance: 0,
      espediente: "das 07h as 18h"),
  Dados(
      name: "UBS Santana",
      cep: "12212-000",
      localization: [-23.1587399, -45.9005992],
      qtdOfDose: (totalDoses * 0.002),
      distance: 0,
      espediente: "das 07h as 18h"),
//Oeste
  Dados(
      name: "UBS Jardim das Indústrias",
      cep: "12240-160",
      localization: [-23.2279522, -45.9211948],
      qtdOfDose: (totalDoses * 0.021),
      distance: 0,
      espediente: "das 07h as 18h"),
  Dados(
      name: "UBS Limoeiro",
      cep: "12241-410",
      localization: [-23.2467732, -45.9398982],
      qtdOfDose: (totalDoses * 0.003),
      distance: 0,
      espediente: "das 07h as 18h"),
//Sudeste
  Dados(
      name: "UBS Jardim da Granja",
      cep: "12227-520",
      localization: [-23.2064384, -45.8593643],
      qtdOfDose: (totalDoses * 0.012),
      distance: 0,
      espediente: "das 07h as 18h"),
  Dados(
      name: "UBS Putim",
      cep: "12228-077",
      localization: [-23.2487258, -45.8348473],
      qtdOfDose: (totalDoses * 0.003),
      distance: 0,
      espediente: "das 07h as 18h"),
  Dados(
      name: "UBS São Judas Tadeu",
      cep: "12228-430",
      localization: [-23.2565019, -45.8382851],
      qtdOfDose: (totalDoses * 0.008),
      distance: 0,
      espediente: "das 07h as 18h"),
  Dados(
      name: "UBS Vila Nair",
      cep: "12231-180",
      localization: [-23.2107983, -45.8875039],
      qtdOfDose: (totalDoses * 0.006),
      distance: 0,
      espediente: "das 07h as 18h"),
  Dados(
      name: "UBS Interlagos",
      cep: "12229-001",
      localization: [-23.27307, -45.8671377],
      qtdOfDose: (totalDoses * 0.015),
      distance: 0,
      espediente: "das 07h as 18h"),
//Sul
  Dados(
      name: "UBS Satélite",
      cep: "12230-000",
      localization: [-23.2288735, -45.8858511],
      qtdOfDose: (totalDoses * 0.033),
      distance: 0,
      espediente: "das 07h as 18h"),
  Dados(
      name: "UBS Parque Industrial",
      cep: "12235-625",
      localization: [-23.2377687, -45.9110364],
      qtdOfDose: (totalDoses * 0.037),
      distance: 0,
      espediente: "das 07h as 18h"),
  Dados(
      name: "UBS Morumbi",
      cep: "12236-742",
      localization: [-23.2513121, -45.9056921],
      qtdOfDose: (totalDoses * 0.034),
      distance: 0,
      espediente: "das 07h as 18h"),
  Dados(
      name: "UBS Campo Alemães",
      cep: "12239-064",
      localization: [-23.2742569, -45.9025296],
      qtdOfDose: (totalDoses * 0.03),
      distance: 0,
      espediente: "das 07h as 18h"),
  Dados(
      name: "UBS Chácaras Reunidas",
      cep: "12238-300",
      localization: [-23.255237, -45.9262566],
      qtdOfDose: (totalDoses * 0.003),
      distance: 0,
      espediente: "das 07h as 18h"),
];
