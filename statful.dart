import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String value = 'Test';
  void clickMe() {
    setState(() {
      value = 'done';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(children: <Widget>[
        Text('$value'),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: clickMe,
        )
      ]),
    );
  }
}
