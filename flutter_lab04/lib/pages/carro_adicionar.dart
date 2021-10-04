import 'package:flutter/material.dart';
import 'package:flutter_lab04/operacoes/carro_modelo.dart';

class AddCarro extends StatefulWidget {
  const AddCarro();

  @override
  State<AddCarro> createState() => _AddCarroState();
}

class _AddCarroState extends State<AddCarro> {
  final controlador_two = TextEditingController();
  final controlador_one = TextEditingController();

  String? nome;
  String? url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Car'),
      ),
      body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Enter car name',
                    labelText: 'Car',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                controller: controlador_one,
              ),
              SizedBox(
                height: 17,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Enter url',
                    labelText: 'Image',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                controller: controlador_two,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: Text(
                  'Salvar',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w300),
                ),
                onPressed: () {
                  setState(() {
                    var ca = Carro(controlador_one.text, controlador_two.text);
                    CarroController.listaCarros.add(ca);
                    Navigator.pop(context);
                  });
                },
              )
            ],
          )),
    );
  }
}
