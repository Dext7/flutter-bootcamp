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
          child: Row( // Row to Column
            // crossAxisAlignment: CrossAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 100.0,
                // width: double.infinity,
                color: Colors.white,
                child: Text('Container'),
              ),
              SizedBox(height: 20.0,),
              Container(
                height: 100.0,
                // width: double.infinity,
                color: Colors.blue,
                child: Text('Container 2')
              ),
              SizedBox(height: 20.0,),
              Container(
                height: 100.0,
                // width: double.infinity,
                color: Colors.amber,
                child: Text('Container 3')
              ),
            ],
          )
        )
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}