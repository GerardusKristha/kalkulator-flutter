import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kalkulator/calculatorButton.dart';

class CalculatorPage extends StatefulWidget {
  CalculatorPage({Key? key}) : super(key: key);

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter Calculator'),
      ),
      body: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                '000',
                style: TextStyle(
                  fontSize: 48,
                  color: Colors.teal[900],
                ),
              ),
            ),
            alignment: Alignment(1.0, 1.0),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                '000',
                style: TextStyle(
                  fontSize: 48,
                  color: Colors.teal[900],
                ),
              ),
            ),
            alignment: Alignment(1.0, 1.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(text: 'AC'),
              CalculatorButton(text: 'C'),
              CalculatorButton(text: '<'),
              CalculatorButton(text: '/'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(text: '9'),
              CalculatorButton(text: '8'),
              CalculatorButton(text: '7'),
              CalculatorButton(text: 'x'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(text: '6'),
              CalculatorButton(text: '5'),
              CalculatorButton(text: '4'),
              CalculatorButton(text: '-'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(text: '3'),
              CalculatorButton(text: '2'),
              CalculatorButton(text: '1'),
              CalculatorButton(text: '+'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(text: '+/-'),
              CalculatorButton(text: '0'),
              CalculatorButton(text: '00'),
              CalculatorButton(text: '='),
            ],
          )
        ]),
      ),
    ));
  }
}
