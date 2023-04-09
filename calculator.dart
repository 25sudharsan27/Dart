import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(Simple());
}

class Simple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Simple1(),
    );
  }
}

class Simple1 extends StatefulWidget {
  @override
  _SimpleState createState() => _SimpleState();
}

class _SimpleState extends State<Simple1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Simple')),
        body: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
              child: Text(
                'Sudharsan',
                style: TextStyle(fontSize: 48.0),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.5);
                    }
                    return null; // Use the component's default.
                  },
                ),
              ),
              child: const Text('Button'),
              onPressed: () {
                // ...
              },
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.5);
                    }
                    return null; // Use the component's default.
                  },
                ),
              ),
              child: const Text('Button1'),
              onPressed: () {
                // ...
              },
            ),
          ],
        ));
  }
}
