import 'package:flutter/material.dart';
import 'package:flutter_lab04/operacoes/carro_modelo.dart';

class CarroDetalhe extends StatelessWidget {
  late int idx;
  CarroDetalhe(int? index) {
    idx = index!;
  }
  final itens = CarroController.getAllCarros();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(itens[idx].marca),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Image.network(itens[idx].descricao),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(itens[idx].descricao),
          )
        ],
      ),
    );
  }
}
