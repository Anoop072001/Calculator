import 'package:calculator/Widgets/CalcButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(CalcApp());
}

class CalcApp extends StatefulWidget {
  CalcApp({Key key}) : super(key: key);
  @override
  CalcAppState createState() => CalcAppState();
}

class CalcAppState extends State<CalcApp> {
  String _history = '';
  String _expression = '';
  void numClick(String text) {
    setState(() {
      _expression += text;
    });
  }

  void allClear(String text) {
    setState(() {
      _history = '';
      _expression = '';
    });
  }

  void clear(String text) {
    setState(() {
      _expression = '';
    });
  }

  void evaluate(String text) {
    Parser p = Parser();
    Expression exp = p.parse(_expression);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      _history = _expression;
      _expression = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      home: Scaffold(
        backgroundColor: Color(0xFF1A2034),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.only(right: 40),
                child: Text(
                  _history,
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
                alignment: Alignment(1, 1),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(right: 40),
                child: Text(
                  _expression,
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                    ),
                  ),
                ),
                alignment: Alignment(1, 1),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(
                    text: "AC",
                    operators: "AC",
                    fillColor: 0xFF6C807F,
                    textColor: 0xFFFFE607,
                    textSize: 20,
                    callback: allClear,
                  ),
                  CalcButton(
                    text: "C",
                    operators: "C",
                    fillColor: 0xFF6C807F,
                    textColor: 0xFFFFE607,
                    callback: clear,
                  ),
                  CalcButton(
                    text: "%",
                    operators: "%",
                    fillColor: 0xFFFFFFFF,
                    textColor: 0xFFFFE607,
                    callback: numClick,
                  ),
                  CalcButton(
                    text: "/",
                    operators: "/",
                    fillColor: 0xFFFFFFFF,
                    textColor: 0xFFFFE607,
                    callback: numClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(
                    text: "7",
                    operators: "7",
                    textColor: 0xFFFFE607,
                    callback: numClick,
                  ),
                  CalcButton(
                    text: "8",
                    operators: "8",
                    textColor: 0xFFFFE607,
                    callback: numClick,
                  ),
                  CalcButton(
                    text: "9",
                    operators: "9",
                    textColor: 0xFFFFE607,
                    callback: numClick,
                  ),
                  CalcButton(
                    text: "x",
                    operators: "*",
                    fillColor: 0xFFFFFFFF,
                    textColor: 0xFFFFE607,
                    textSize: 24,
                    callback: numClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(
                    text: "4",
                    operators: "4",
                    textColor: 0xFFFFE607,
                    callback: numClick,
                  ),
                  CalcButton(
                    text: "5",
                    operators: "5",
                    textColor: 0xFFFFE607,
                    callback: numClick,
                  ),
                  CalcButton(
                    text: "6",
                    operators: "6",
                    textColor: 0xFFFFE607,
                    callback: numClick,
                  ),
                  CalcButton(
                    text: "-",
                    operators: "-",
                    fillColor: 0xFFFFFFFF,
                    textColor: 0xFFFFE607,
                    textSize: 30,
                    callback: numClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(
                    text: "1",
                    operators: "1",
                    textColor: 0xFFFFE607,
                    callback: numClick,
                  ),
                  CalcButton(
                    text: "2",
                    operators: "2",
                    textColor: 0xFFFFE607,
                    callback: numClick,
                  ),
                  CalcButton(
                    text: "3",
                    operators: "3",
                    textColor: 0xFFFFE607,
                    callback: numClick,
                  ),
                  CalcButton(
                    text: "+",
                    operators: "+",
                    fillColor: 0xFFFFFFFF,
                    textColor: 0xFFFFE607,
                    textSize: 30,
                    callback: numClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(
                    text: ".",
                    operators: ".",
                    textColor: 0xFFFFE607,
                    callback: numClick,
                  ),
                  CalcButton(
                    text: "0",
                    operators: "0",
                    textColor: 0xFFFFE607,
                    callback: numClick,
                  ),
                  CalcButton(
                    text: "00",
                    operators: "00",
                    textColor: 0xFFFFE607,
                    callback: numClick,
                    textSize: 26,
                  ),
                  CalcButton(
                    text: "=",
                    operators: "=",
                    fillColor: 0xFFFFFFFF,
                    textColor: 0xFFFFE607,
                    textSize: 30,
                    callback: evaluate,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
