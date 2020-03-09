import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DiceePage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DiceePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            //flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/dicee/dice1.png'),
            )
          ),
          Expanded(
            //flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/dicee/dice2.png'),
            )
          )
        ],
      )
    );
  }
}
