import 'package:dracula_cardapio/Cardapio.dart';
import 'package:dracula_cardapio/models/dracula_model.dart';
import 'package:flutter/material.dart';

import 'Cardapio.dart';
import 'models/dracula_model.dart';

class DraculaListar extends StatefulWidget {
  final String token;

  const DraculaListar({Key key, this.token}) : super(key: key);
  @override
  _DraculaListarState createState() => _DraculaListarState();
}

class _DraculaListarState extends State<DraculaListar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cardápio Drácula Burger'),
      ),
         body: 
        Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
            children: [
                Image(image: AssetImage('assets/images/dracula.png'), width: 200, height: 200),
                Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text("Drácula Burguer", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)), 
        ),
            ],
          ),
       
       
        Expanded(
                  child: FutureBuilder (
          future: LancheModel.obterDados(),
          builder: (context, resultado){
          if (resultado.connectionState == ConnectionState.none && resultado.hasData == null) {
            return Text('Carregando....');
          } else {
            return ListView.builder(
              itemCount: resultado?.data?.length ?? 0,
              itemBuilder: (context, i){
               return Cardapio(
                  lancheId: resultado.data[i].lancheId,
                  imagem: resultado.data[i].imagem,
                  nome: resultado.data[i].nome,
                  descricao: resultado.data[i].descricao,
                  preco: resultado.data[i].preco,
                  );
              }
            );
          }
          },
      ),
        ),
        ]));
  }
}
