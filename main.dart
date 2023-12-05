import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color _backgroundColor = Colors.white;
  Color _buttonColor = Colors.blue;

  void _changeColors() {
    setState(() {
      // Change the background color to a random color
      _backgroundColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
      
      // Change the button color to a different random color
      _buttonColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Change Colors of this Flutter App!'),
        ),
        backgroundColor: _backgroundColor, // Set the background color
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '280 Optional Assignment',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _changeColors,
                style: ElevatedButton.styleFrom(
                  primary: _buttonColor, // Set the button's color
                ),
                child: Text('Change Colors'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
