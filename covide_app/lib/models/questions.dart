import 'package:flutter/material.dart';
import 'anamnese.dart';

//listar meus projetos e subir imagem  e descricao no git
final List<Project> projects = [
  Project(question: 'Você é diabético?', answer: false, valor: 0),
  Project(
      question:
          'Você tem ou teve alguma morbidade cardiovascular? (Infarto, arritmia, Insuficiência)',
      answer: false,
      valor: 0),
  Project(question: 'Você é hipertenso?', answer: false, valor: 0),
  Project(
      question:
          'Você possui algum tipo de imunodeficiência? (Câncer, HIV, pacientes transplantados…)',
      answer: false,
      valor: 0),
  Project(
      question: 'Você possui algum distúrbio renal?', answer: false, valor: 0),
  Project(
      question: 'Você possui algum distúrbio hepático?',
      answer: false,
      valor: 0),
  Project(
      question: 'Você possui alguma desordem neurológica?',
      answer: false,
      valor: 0),
  Project(
      question:
          'Você possui algum distúrbio respiratório? (Asma, bronquite, Enfisema pulmonar)',
      answer: false,
      valor: 0),
  Project(question: 'Você é fumante?', answer: false, valor: 0),
  Project(
      question: 'Você teve febre nos últimos dias acima de 37,8°C? ',
      answer: false,
      valor: 2),
  Project(
      question: 'Você teve tosse nos últimos dias? (com ou sem secreção)',
      answer: false,
      valor: 2),
  Project(question: 'Está com dor de garganta?', answer: false, valor: 1),
  Project(
      question:
          'Apresentou ou apresenta dificuldade para respirar mesmo com esforços leves ou em repouso?',
      answer: false,
      valor: 1),
  Project(
      question: 'Você teve/ ou está tendo diarréia nos últimos dias?',
      answer: false,
      valor: 1),
  Project(question: 'Apresenta náuseas ou vômitos?', answer: false, valor: 1),
  Project(
      question: 'Tem dor de cefaleia (dor de cabeça) frequente?',
      answer: false,
      valor: 1),
  Project(
      question: 'Tem notado que está sentindo menos o gosto dos alimentos?',
      answer: false,
      valor: 1),
  Project(
      question: 'Tem notado que está sentindo menos o cheiro das coisas?',
      answer: false,
      valor: 1),
  Project(
      question: 'Está com coriza? ( Nariz escorrendo?)',
      answer: false,
      valor: 1),
  Project(question: 'Está com o nariz entupido?', answer: false, valor: 1),
  Project(
      question: 'Nos últimos 14 dias você manteve o isolamento social?',
      answer: false,
      valor: 0),
  Project(
      question: 'Nos últimos 14 dias você saiu do país?',
      answer: false,
      valor: 0),
  Project(
      question:
          'Nos últimos 14 dias você esteve em alguma unidade de saúde (UBS, Hospitais, PS)?',
      answer: false,
      valor: 0),
  Project(
      question:
          'Alguém que mora com você trabalha em uma profissão de risco ou essencial? ',
      answer: false,
      valor: 0),
  Project(
      question:
          'Nos últimos 14 dias você teve contato com alguém que tinha suspeita ou confirmação de COVID-19?',
      answer: false,
      valor: 0),
];
