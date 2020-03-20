import 'package:flutter/material.dart';
//import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  void playSound(int id) {
    final player = AudioCache();
    player.play('note$id.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
          child: SafeArea(
              child: Column(
                children: <Widget>[
                  FlatButton(
                    color: Colors.redAccent,
                      onPressed: () {
                        playSound(1);
                      },
                      child: null
                  ),
                  FlatButton(
                      color: Colors.deepOrangeAccent,
                      onPressed: () {
                        playSound(2);
                      },
                      child: null
                  ),
                  FlatButton(
                      color: Colors.orange,
                      onPressed: () {
                        playSound(3);
                      },
                      child: null
                  ),
                  FlatButton(
                      color: Colors.amberAccent,
                      onPressed: () {
                        playSound(4);
                      },
                      child: null
                  ),
                  FlatButton(
                      color: Colors.black87,
                      onPressed: () {
                        playSound(5);
                      },
                      child: null
                  ),
                  FlatButton(
                      color: Colors.indigoAccent,
                      onPressed: () {
                        playSound(6);
                      },
                      child: null
                  ),
                  FlatButton(
                      color: Colors.purple,
                      onPressed: () {
                        playSound(7);
                      },
                      child: null
                  ),
                ],
              )
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
