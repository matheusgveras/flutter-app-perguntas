import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String textoBotao;
  final void Function() quandoSelecionado;
  Resposta(this.textoBotao, this.quandoSelecionado);
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.red,
        child:Text(textoBotao), 
        onPressed: quandoSelecionado
        ),
    );
  }
}