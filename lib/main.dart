
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';
main() {
  runApp(new PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  void _responder(){
    setState(() {
      _perguntaSelecionada++;
    });
    print('pergunta respondida'); 
  }
  @override
  Widget build(BuildContext context) {

    final perguntas = [
      'Qual meu nome?',
      'Qual meu signo?',
      'Qual meu idade?',
      'Qual meu computador?',
      'Qual minha cor?',
      'Qual meu chienelo?',
      'Qual meu animal?',
      'Qual meu mascote?',
      'Qual meu time?',
      'Qual meu teste?',
    ];

    return MaterialApp(
      title: 'Ola Mundo 2',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]),
            Resposta('Resposta 1'),
            Resposta('Resposta 2'),
            Resposta('Resposta 3'),
          ],
        )
      )
    );
  }

}

class PerguntaApp extends StatefulWidget {
 
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }

}