import 'package:flutter/material.dart';
//import 'package:flutter_application/constants.dart';

class CustomHeadingText extends StatelessWidget {
  //variables
  var text = "";
  //constructor
  CustomHeadingText({String text, Key key}) {
    this.text = text;
  }
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context);
    return Text(
      text,
      style: TextStyle(
        fontSize: screen.size.height / 30,
        fontWeight: FontWeight.w700,
        //color: Color.fromARGB(1, 216, 214, 218),
        color: Color(0xFFD8D6DA),
        fontFamily: 'OpenSans-Regular.ttf',
      ),
    );
  }
}
