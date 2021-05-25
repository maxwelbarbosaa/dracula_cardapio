import 'package:flutter/material.dart';

class Cardapio extends StatelessWidget {
  final int lancheId;
  final String imagem;
  final String nome;
  final String descricao;
  final double preco;

  const Cardapio(
      {Key key, this.lancheId, this.imagem, this.nome, this.descricao, this.preco})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: double.infinity,
        child: Card(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
              imagem,
              width: 150,
              height: 150,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    lancheId.toString(),
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(nome),
                  Container(
                   constraints: BoxConstraints(maxWidth: 150, maxHeight: 100), child: Text(descricao)),
                  Text("Preço: " + preco.toString())
                ],
              )
            ],
          ),
        )));
  }
}