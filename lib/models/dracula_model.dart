import 'dart:convert';
import 'package:http/http.dart';

List<LancheModel> lancheModelFromJson(String str) =>
    List<LancheModel>.from(
        json.decode(str).map((x) => LancheModel.fromJson(x)));
 
String lancheModelToJson(List<LancheModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LancheModel{

//static List<String> frases = ['lancheId','imagem', 'nome', 'descricao', 'preco'];

LancheModel({this.lancheId,this.imagem, this.nome, this.descricao, this.preco} );

 int lancheId;
 String nome;
 String descricao;
 double preco;
 String imagem;

factory LancheModel.fromJson(Map<String, dynamic> json) => LancheModel(
lancheId: json['lancheId'],
imagem: json['imagem'],
nome: json['nome'],
descricao: json['descricao'],
preco: json['preco'],
);


 Map<String, dynamic> toJson() => {
        "lancheId": lancheId,
        "imagem": imagem,
        "nome": nome,
        "descricao": descricao,
        "preco": preco,
      };

 static Future<List<LancheModel>> obterDados() async {
    var url = Uri.parse('https://api.senac.estevaorada.com/sistema/cardapio/lanches');
    var resposta = await get(url);
  
    var json = jsonDecode(resposta.body);
    List<LancheModel> listaresultado =
        List<LancheModel>.from(json.map((i) => LancheModel.fromJson(i)));
    return listaresultado;
  }
}