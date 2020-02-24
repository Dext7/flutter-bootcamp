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
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/0408.png'),
              ),
              Text('Dext7',
                style: TextStyle(
                  fontFamily: 'Prompt',
                  fontSize:40.0, 
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text('Flutter developer',
                style: TextStyle(
                  fontFamily: 'AdventPro',
                  fontSize: 20.0,
                  color: Colors.white,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          )
        )
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}