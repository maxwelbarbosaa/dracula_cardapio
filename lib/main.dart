//import 'package:consultahosp/InicioPage.dart';
//import 'package:consultahosp/LoginPage.dart';
import 'package:dracula_cardapio/DraculaListar.dart';
import 'package:flutter/material.dart';


//import 'DraculaListar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
return MaterialApp(
  theme: ThemeData(primarySwatch: Colors.blue),
  home: DraculaListar(),
);

  }
}