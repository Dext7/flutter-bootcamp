import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Text('Magic 8 Ball'),
          backgroundColor: Colors.blue,
        ),
        body: MagicBall(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MagicBall extends StatefulWidget {
  MagicBall({Key key}) : super(key: key);

  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {

  var ballImages = 1;

  void changeMagicBallFace(){
    setState(() {
      ballImages =  Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeMagicBallFace();
              }, 
              child: Image.asset('images/ball$ballImages.png')
            )
          ),
        ],
      )
    );
  }
}