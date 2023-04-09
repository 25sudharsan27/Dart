import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void clickme() {
    print("hello");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: clickme, icon: Icon(Icons.menu)),
        title: Text("Sudharsan"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("search");
            },
          ),
          IconButton(
            onPressed: () {
              print("more");
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
        flexibleSpace: SafeArea(
          child: Icon(
            Icons.camera,
            color: Colors.white,
            size: 55.0,
          ),
        ),
        bottom: PreferredSize(
          child: Container(
            color: Colors.grey,
            height: 75.0,
            width: double.infinity,
            child: Text("Sudharsan",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                )),
          ),
          preferredSize: Size.fromHeight(75.0),
        ),
      ),
    );
  }
}
