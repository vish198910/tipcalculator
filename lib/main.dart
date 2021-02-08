import 'package:flutter/material.dart';
import 'package:tip_raise/tips_calculator.dart';

void main() => runApp(TipRaiseFlutterApp());

class TipRaiseFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TipCalculator',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreenAccent,
          centerTitle: true,
          title: Text(
            "Tip Calculator",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: TipCalculator(),
      ),
    );
  }
}
