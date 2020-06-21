import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = TextStyle(fontSize: 25.0);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statefull'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Text(
            'Número de Clicks:',
            style: _estiloTexto,
          ),
          Text(
            '$_conteo',
            style: _estiloTexto,
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      )),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          onPressed: _reset,
          backgroundColor: Colors.green,
          child: Icon(Icons.exposure_zero),
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          onPressed: _sustraer,
          backgroundColor: Colors.green,
          child: Icon(Icons.remove),
        ),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          onPressed: _agregar,
          backgroundColor: Colors.green,
          child: Icon(Icons.add),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.end,
    );
  }

  void _agregar() => setState(() => _conteo++);

  void _sustraer() => setState(() => _conteo--);

  void _reset() => setState(() => _conteo = 0);
}
