import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Text('I Am Rich'),
            backgroundColor: Colors.blueGrey[900]
          ),
          body: Center(
            child: new Image(
              image: NetworkImage('https://icons.veryicon.com/png/Business/Flat%20Finance/diamond.png')
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
      );
  }
}