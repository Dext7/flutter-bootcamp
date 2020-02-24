import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Container(
            height: 100.0,
            width: 100.0,
            margin: EdgeInsets.only(left: 30.0),
            padding: EdgeInsets.all(20.0),
            /*
            margin: EdgeInsets.fromLTRB(100.0, 50.0, 50.0, 35.0),
            margin: EdgeInsets.symmetric(
              vertical: 50.0,
              horizontal: 10.0
            ), */
            color: Colors.white,
            child: Text('data'),
          )
        )
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}