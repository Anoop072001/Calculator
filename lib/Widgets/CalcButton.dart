import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final String text;
  const CalcButton({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: ElevatedButton(
        child: Text(text,
            style: TextStyle(
              color: Colors.white,
            )),
        onPressed: () {},
      ),
    );
  }
}
