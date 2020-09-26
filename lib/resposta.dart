import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String textoBotao;
  Resposta(this.textoBotao);
  @override
  Widget build(BuildContext context) {
    return  RaisedButton(child: Text(textoBotao), onPressed: null);
  }
}