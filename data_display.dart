import 'package:flutter/material.dart';
import 'detalhes_page.dart';

class DataDisplayPage extends StatelessWidget {
  final String nome;
  final String idade;
  final String sexo;
  final String escolaridade;
  final double limiteConta;
  final bool brasileiro;

  DataDisplayPage({
    required this.nome,
    required this.idade,
    required this.sexo,
    required this.escolaridade,
    required this.limiteConta,
    required this.brasileiro,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dados da Conta'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nome: $nome'),
                Text('Idade: $idade anos'),
                Text('Sexo: $sexo'),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalhesPage(
                    escolaridade: escolaridade,
                    limiteConta: limiteConta,
                    brasileiro: brasileiro,
                  ),
                ),
              );
            },
            child: Text('Mais Detalhes'),
          ),
        ],
      ),
    );
  }
}
