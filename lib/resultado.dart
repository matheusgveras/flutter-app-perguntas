import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  
  final int pontuacao;
  final Function() resetarQuestionario;
  Resultado(this.pontuacao, this.resetarQuestionario);
  String get fraseResultado {
    if(pontuacao < 9) {
      return 'Reprovado';
    } else if(pontuacao < 20) {
      return 'Melhor';   
    } else {
      return 'JEDI!';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
          
        ),
        FlatButton(
          child: Text('Reinicar?', style: TextStyle(fontSize: 29),),
          textColor: Colors.blue,
          onPressed: resetarQuestionario,
        )
      ],
    );
  }
}
