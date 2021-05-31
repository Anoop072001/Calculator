import 'package:flutter/material.dart';

import 'Widgets/CalcButton.dart';

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
          child: CalcButton(text: "1"),
        ),
      ),
    );
  }
}
