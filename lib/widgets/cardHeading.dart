import 'package:flutter/material.dart';

class CardHeading extends StatelessWidget {
  var text = "";
  CardHeading({String text}) {
    this.text = text;
  }
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context);
    return Text(
      text,
      style: TextStyle(
        fontSize: screen.size.height / 40,
        fontWeight: FontWeight.w600,
        fontFamily: 'OpenSans-Bold.ttf',
        color: Color(0xFFFFFFFF),
      ),
    );
  }
}
