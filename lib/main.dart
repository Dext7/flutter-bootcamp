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

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            //flex: 1,
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    leftDiceeNumber = 4;
                  });
                }, 
                child: Image.asset('images/dicee/dice$leftDiceeNumber.png')
                ),
          ),
          Expanded(
            //flex: 1,
            child: FlatButton(
              onPressed: null, 
              child: Image.asset('images/dicee/dice2.png')
            ),
          )
        ],
      )
    );
  }
}