import 'package:calculator/converter.dart';
import 'package:flutter/material.dart';
import 'package:calculator/calculator.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool showCalculator = true;

  void toggleView(){
    setState(() {
      showCalculator = !showCalculator;
    });
  }

  @override
  Widget build(BuildContext context) {
    return showCalculator ? Calculator(toggleView: toggleView) : Converter(toggleView: toggleView);
  }
}