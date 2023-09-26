import 'package:flutter/material.dart';

class DetalhesPage extends StatelessWidget {
  final String escolaridade;
  final double limiteConta;
  final bool brasileiro;

  DetalhesPage({
    required this.escolaridade,
    required this.limiteConta,
    required this.brasileiro,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text('Escolaridade: $escolaridade'),
          Text('Limite na Conta: R\$ ${limiteConta.toStringAsFixed(2)}'),
          Text('Nacionalidade: ${brasileiro ? 'Brasileiro' : 'Estrangeiro'}'),
        ],
      ),
    );
  }
}
