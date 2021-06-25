import 'package:flutter/material.dart';
import 'anamnese.dart';

//listar meus projetos e subir imagem  e descricao no git
final List<Project> projects = [
  Project(question: 'Você é diabético?', answer: true),
  Project(
      question:
          'Você tem ou teve alguma morbidade cardiovascular? (Infarto, arritmia, Insuficiência)',
      answer: true),
  Project(question: 'Você é hipertenso?', answer: true),
  Project(
      question:
          'Você possui algum tipo de imunodeficiência? (Câncer, HIV, pacientes transplantados…)',
      answer: true),
  Project(question: 'Você possui algum distúrbio renal?', answer: true),
  Project(question: 'Você possui algum distúrbio hepático?', answer: true),
  Project(question: 'Você possui alguma desordem neurológica?', answer: true),
  Project(
      question:
          'Você possui algum distúrbio respiratório? (Asma, bronquite, Enfisema pulmonar)',
      answer: true),
  Project(question: 'Você é fumante?', answer: true),
  Project(
      question: 'Você teve febre nos últimos dias acima de 37,8°C? ',
      answer: true),
  Project(
      question: 'Você teve tosse nos últimos dias? (com ou sem secreção)',
      answer: true),
  Project(question: 'Está com dor de garganta?', answer: true),
  Project(
      question:
          'Apresentou ou apresenta dificuldade para respirar mesmo com esforços leves ou em repouso?',
      answer: true),
  Project(
      question: 'Você teve/ ou está tendo diarréia nos últimos dias?',
      answer: true),
  Project(question: 'Apresenta náuseas ou vômitos?', answer: true),
  Project(
      question: 'Tem dor de cefaleia (dor de cabeça) frequente?', answer: true),
  Project(
      question: 'Tem notado que está sentindo menos o gosto dos alimentos?',
      answer: true),
  Project(
      question: 'Tem notado que está sentindo menos o cheiro das coisas?',
      answer: true),
  Project(question: 'Está com coriza? ( Nariz escorrendo?)', answer: true),
  Project(question: 'Está com o nariz entupido?', answer: true),
  Project(
      question: 'Nos últimos 14 dias você manteve o isolamento social?',
      answer: true),
  Project(question: 'Nos últimos 14 dias você saiu do país?', answer: true),
  Project(
      question:
          'Nos últimos 14 dias você esteve em alguma unidade de saúde (UBS, Hospitais, PS)?',
      answer: true),
  Project(
      question:
          'Alguém que mora com você trabalha em uma profissão de risco ou essencial? ',
      answer: true),
  Project(
      question:
          'Nos últimos 14 dias você teve contato com alguém que tinha suspeita ou confirmação de COVID-19?',
      answer: true),
];
