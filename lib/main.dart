import 'package:flutter/material.dart';

import './widgets/CalcButton.dart';

void main() {
  runApp(CalcApp());
}

class CalcApp extends StatelessWidget {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(
                    text: "AC",
                    fillColor: 0xFF6C807F,
                    textColor: 0xFFFFE607,
                    textSize: 20,
                  ),
                  CalcButton(
                    text: "C",
                    fillColor: 0xFF6C807F,
                    textColor: 0xFFFFE607,
                  ),
                  CalcButton(
                    text: "%",
                    fillColor: 0xFFFFFFFF,
                    textColor: 0xFFFFE607,
                  ),
                  CalcButton(
                    text: "/",
                    fillColor: 0xFFFFFFFF,
                    textColor: 0xFFFFE607,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(
                    text: "7",
                    textColor: 0xFFFFE607,
                  ),
                  CalcButton(
                    text: "8",
                    textColor: 0xFFFFE607,
                  ),
                  CalcButton(
                    text: "9",
                    textColor: 0xFFFFE607,
                  ),
                  CalcButton(
                    text: "x",
                    fillColor: 0xFFFFFFFF,
                    textColor: 0xFFFFE607,
                    textSize: 24,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(
                    text: "4",
                    textColor: 0xFFFFE607,
                  ),
                  CalcButton(
                    text: "5",
                    textColor: 0xFFFFE607,
                  ),
                  CalcButton(
                    text: "6",
                    textColor: 0xFFFFE607,
                  ),
                  CalcButton(
                    text: "-",
                    fillColor: 0xFFFFFFFF,
                    textColor: 0xFFFFE607,
                    textSize: 30,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(
                    text: "1",
                    textColor: 0xFFFFE607,
                  ),
                  CalcButton(
                    text: "2",
                    textColor: 0xFFFFE607,
                  ),
                  CalcButton(
                    text: "3",
                    textColor: 0xFFFFE607,
                  ),
                  CalcButton(
                    text: "+",
                    fillColor: 0xFFFFFFFF,
                    textColor: 0xFFFFE607,
                    textSize: 30,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(
                    text: ".",
                    textColor: 0xFFFFE607,
                  ),
                  CalcButton(
                    text: "0",
                    textColor: 0xFFFFE607,
                  ),
                  CalcButton(
                    text: "00",
                    textColor: 0xFFFFE607,
                    textSize: 26,
                  ),
                  CalcButton(
                    text: "=",
                    fillColor: 0xFFFFFFFF,
                    textColor: 0xFFFFE607,
                    textSize: 30,
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
