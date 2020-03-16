import 'package:flutter/material.dart';
import 'dart:math';

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
        body: Dicee(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Dicee extends StatefulWidget {
  Dicee({Key key}) : super(key: key);

  @override
  _DiceeState createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {

  var leftDiceeNumber = 1;
  var rigthDiceeNumber = 1;


  void changeDiceeFace() {
    setState(() {
      rigthDiceeNumber = Random().nextInt(6) + 1;
      leftDiceeNumber = Random().nextInt(6) + 1;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            //flex: 1,
            child: FlatButton(
                onPressed: () {
                  changeDiceeFace();
                }, 
                child: Image.asset('images/dicee/dice$leftDiceeNumber.png')
                ),
          ),
          Expanded(
            //flex: 1,
            child: FlatButton(
              onPressed:  () {
                  changeDiceeFace();
                }, 
              child: Image.asset('images/dicee/dice$rigthDiceeNumber.png')
            ),
          )
        ],
      )
    );
  }
}