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
        backgroundColor: Colors.black54,
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
                    textSize: 20,
                  ),
                  CalcButton(text: "C", fillColor: 0xFF6C807F),
                  CalcButton(
                    text: "%",
                    fillColor: 0xFFFFFFFF,
                    textColor: 0xFF65BDAC,
                  ),
                  CalcButton(
                      text: "/", fillColor: 0xFFFFFFFF, textColor: 0xFF65BDAC),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(
                    text: "7",
                  ),
                  CalcButton(
                    text: "8",
                  ),
                  CalcButton(
                    text: "9",
                  ),
                  CalcButton(
                    text: "x",
                    fillColor: 0xFFFFFFFF,
                    textColor: 0xFF65BDAC,
                    textSize: 24,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(
                    text: "4",
                  ),
                  CalcButton(
                    text: "5",
                  ),
                  CalcButton(
                    text: "6",
                  ),
                  CalcButton(
                    text: "-",
                    fillColor: 0xFFFFFFFF,
                    textColor: 0xFF65BDAC,
                    textSize: 30,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(
                    text: "1",
                  ),
                  CalcButton(
                    text: "2",
                  ),
                  CalcButton(
                    text: "3",
                  ),
                  CalcButton(
                    text: "+",
                    fillColor: 0xFFFFFFFF,
                    textColor: 0xFF65BDAC,
                    textSize: 30,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(
                    text: ".",
                  ),
                  CalcButton(
                    text: "0",
                  ),
                  CalcButton(
                    text: "00",
                    textSize: 26,
                  ),
                  CalcButton(
                    text: "=",
                    fillColor: 0xFFFFFFFF,
                    textColor: 0xFF65BDAC,
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
