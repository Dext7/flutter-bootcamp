import 'package:flutter/material.dart';
//import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  void playSound(int id) {
    final player = AudioCache();
    player.play('note$id.wav');
  }

  Expanded buildKey({int id, Color color }){
    return Expanded(
        child: FlatButton(
            color: color,
            onPressed: () {
              playSound(id);
            },
            child: null
        ),
    );
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildKey(id: 1 , color: Colors.redAccent),
                  buildKey(id: 2, color: Colors.deepOrangeAccent),
                  buildKey(id: 3, color:Colors.orange),
                  buildKey(id: 4, color: Colors.amberAccent),
                  buildKey(id: 5, color: Colors.red),
                  buildKey(id: 6, color: Colors.indigoAccent),
                  buildKey(id: 7, color: Colors.purple)
                ],
              )
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
