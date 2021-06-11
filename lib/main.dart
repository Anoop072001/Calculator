import 'package:calculator/Widgets/CalcButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                    fillColor: 0xFF6C807F,
                    textColor: 0xFFFFE607,
                    textSize: 20,
                    callback: numClick,
                  ),
                  CalcButton(
                    text: "C",
                    fillColor: 0xFF6C807F,
                    textColor: 0xFFFFE607,
                    callback: numClick,
                  ),
                  CalcButton(
                    text: "%",
                    fillColor: 0xFFFFFFFF,
                    textColor: 0xFFFFE607,
                    callback: numClick,
                  ),
                  CalcButton(
                    text: "/",
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
                    textColor: 0xFFFFE607,
                    callback: numClick,
                  ),
                  CalcButton(
                    text: "8",
                    textColor: 0xFFFFE607,
                    callback: numClick,
                  ),
                  CalcButton(
                    text: "9",
                    textColor: 0xFFFFE607,
                    callback: numClick,
                  ),
                  CalcButton(
                    text: "x",
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
                    textColor: 0xFFFFE607,
                    callback: numClick,
                  ),
                  CalcButton(
                    text: "5",
                    textColor: 0xFFFFE607,
                    callback: numClick,
                  ),
                  CalcButton(
                    text: "6",
                    textColor: 0xFFFFE607,
                    callback: numClick,
                  ),
                  CalcButton(
                    text: "-",
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
                    textColor: 0xFFFFE607,
                    callback: numClick,
                  ),
                  CalcButton(
                    text: "2",
                    textColor: 0xFFFFE607,
                    callback: numClick,
                  ),
                  CalcButton(
                    text: "3",
                    textColor: 0xFFFFE607,
                    callback: numClick,
                  ),
                  CalcButton(
                    text: "+",
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
                    textColor: 0xFFFFE607,
                    callback: numClick,
                  ),
                  CalcButton(
                    text: "0",
                    textColor: 0xFFFFE607,
                    callback: numClick,
                  ),
                  CalcButton(
                    text: "00",
                    textColor: 0xFFFFE607,
                    callback: numClick,
                    textSize: 26,
                  ),
                  CalcButton(
                    text: "=",
                    fillColor: 0xFFFFFFFF,
                    textColor: 0xFFFFE607,
                    textSize: 30,
                    callback: numClick,
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
