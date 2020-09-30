import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de IMC'),
        centerTitle: true,
        backgroundColor: Colors.green[300],
        actions: <Widget>[
          IconButton(icon: Icon(Icons.refresh), onPressed: (){})
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Icon(Icons.person_outline, color: Colors.green[300], size: 120.0),
          TextField(keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Peso (kg)',
              labelStyle: TextStyle(color: Colors.green[300])
          ),
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25.0, color: Colors.green[300]),
          ),
          TextField(keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Altura (cm)',
              labelStyle: TextStyle(color: Colors.green[300])
          ),
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25.0, color: Colors.green[300]),
          ),
        ],
      ),
    );
  }
}
