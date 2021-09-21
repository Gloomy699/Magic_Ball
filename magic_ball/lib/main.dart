import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue[200],
        appBar: AppBar(
          title: Text('Ask me anything'),
        ),
        body: _MagicBall(),
      ),
    ),
  );
}

class _MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<_MagicBall> {
  int _ballNumber = 1;

  void _changeBall() {
    setState(() {
      _ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: TextButton(
          onPressed: _changeBall,
          child: Image.asset('assets/images/ball$_ballNumber.png'),
        ),
      ),
    );
  }
}
