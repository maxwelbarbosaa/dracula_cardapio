import 'package:flutter/material.dart';

// Estilo do Título:
class Titulo extends StatelessWidget {
 final String txt;

  const Titulo({Key key, this.txt}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(txt,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),);
  }
}