import 'package:flutter/material.dart';
import 'package:flutter_lab04/operacoes/carro_modelo.dart';

import 'carro_adicionar.dart';
import 'carro_detalhes.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final itens = CarroController.getAllCarros();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Cars'),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: itens.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(2.0),
                    child: Image.network(
                      itens[index].descricao,
                      height: 150,
                      width: 100,
                    ),
                  ),
                  title: Text(itens[index].marca),
                  subtitle: Text(itens[index].descricao),
                  isThreeLine: true,
                  trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          CarroController.deleteCarro(itens[index]);
                        });
                      },
                      splashColor: Colors.blue,
                      icon: Icon(Icons.delete)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CarroDetalhe(index)));
                  },
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AddCarro()))
              .then((value) => setState(() {}));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
