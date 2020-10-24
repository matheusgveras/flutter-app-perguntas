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

  void _responder(){
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {

    final List<Map<String, Object>> perguntas = [
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

    List<Widget> respostas = [];
    for(var textResp in perguntas[_perguntaSelecionada]['resposta']){
      respostas.add(Resposta(textResp, _responder));
    }

    return MaterialApp(
      title: 'Ola Mundo 2',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]['texto']),
           ...respostas
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