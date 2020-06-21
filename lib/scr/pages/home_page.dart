import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estiloTexto = TextStyle(fontSize: 25.0);
  final conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Text(
            'Número de Clicks:',
            style: estiloTexto,
          ),
          Text(
            '$conteo',
            style: estiloTexto,
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Etamos dentro del botton');
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
