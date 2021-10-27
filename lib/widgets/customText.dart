import 'package:flutter/material.dart';
//import 'package:flutter_application/constants.dart';

class CustomText extends StatelessWidget {
  var text = "";
  CustomText({String text}) {
    this.text = text;
  }
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context);
    return Text(
      text,
      style: TextStyle(
        fontSize: screen.size.height / 50,
        fontWeight: FontWeight.w400,
        fontFamily: 'OpenSans-Regular.ttf',
        color: Color(0xFF515256),
      ),
    );
  }
}
