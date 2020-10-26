import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import './resultado.dart';
import './questionario.dart';

main() {
  runApp(new PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _porntuacaoTotal = 0;
  final _perguntas = const [
    {
      'texto': 'Pergunta #1',
      'resposta': [
        {'texto': '#1 Resp1', 'pontuacao': 10},
        {'texto': '#1 Resp2', 'pontuacao': 2},
        {'texto': '#1 Resp3', 'pontuacao': 3},
        {'texto': '#1 Resp4', 'pontuacao': 1},
      ]
    },
    {
      'texto': 'Pergunta #2',
      'resposta': [
        {'texto':'#2 Resp1','pontuacao':3}, 
        {'texto':'#2 Resp2','pontuacao':10}, 
        {'texto':'#2 Resp3','pontuacao':4}, 
        {'texto':'#2 Resp4','pontuacao':8},
      ]},
    {
      'texto': 'Pergunta #3',
      'resposta': [
        {'texto':'#3 Resp2','pontuacao':4}, 
        {'texto':'#3 Resp1','pontuacao':5}, 
        {'texto':'#3 Resp3','pontuacao':10}, 
        {'texto':'#3 Resp4','pontuacao':2},
      ]},
    {
      'texto': 'Pergunta #4',
      'resposta': [
        {'texto': '#4 Resp1','pontuacao':1},
        {'texto': '#4 Resp2','pontuacao':10}, 
        {'texto': '#4 Resp3','pontuacao':5}, 
        {'texto': '#4 Resp4','pontuacao':6}      
        ]
    }
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _porntuacaoTotal += pontuacao;
      });
    }
  }

  void _reinicarQuestionario(){
     setState(() {
        _porntuacaoTotal = 0;
        _perguntaSelecionada = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Perguntas',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Perguntas'),
            ),
            body: temPerguntaSelecionada
                ? Questionario(
                    perguntas: _perguntas,
                    perguntaSelecionada: _perguntaSelecionada,
                    responder: _responder)
                : Resultado(_porntuacaoTotal,_reinicarQuestionario)));
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
