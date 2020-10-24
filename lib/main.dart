import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './questao.dart';
import './resposta.dart';
main() {
  runApp(new PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
     final _perguntas = const [
     {
       'texto': 'Pergunta #1',
       'resposta': ['#1 Resp1','#1 Resp2','#1 Resp3','#1 Resp4']
     },
     {
       'texto': 'Pergunta #2',
       'resposta': ['#2 Resp1','#2 Resp2','#1 Resp2','#2 Resp4']
     },
     {
       'texto': 'Pergunta #3',
       'resposta': ['#3 Resp1','#3 Resp2','#3 Resp3','#3 Resp4']
     },
     {
       'texto': 'Pergunta #4',
       'resposta': ['#4 Resp1','#4 Resp2','#4 Resp3','#4 Resp4']
     }
  ];

  void _responder(){
    if(temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {

   

    List<String> respostas = temPerguntaSelecionada 
    ? _perguntas[_perguntaSelecionada]['resposta']
    : null;

    return MaterialApp(
      title: 'Perguntas',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ), 
        body: temPerguntaSelecionada
        ? Column(
          children: [
            Questao(_perguntas[_perguntaSelecionada]['texto']),
           ...respostas.map((text) => Resposta(text, _responder)).toList()
          ],
        ) 
        : null
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