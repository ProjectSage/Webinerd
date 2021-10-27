import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CustPhNumInput extends StatelessWidget {
  Color baseColor = Color(0xFF26272C);
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    //[ClayContainer] is used for giving the neumorphic look.
    return Neumorphic(
      margin: EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 4),
      style: NeumorphicStyle(
          boxShape: NeumorphicBoxShape.roundRect(
            BorderRadius.circular(data.size.height / 30),
          ),
          lightSource: LightSource.topLeft,
          color: baseColor,
          depth: -3),
      padding:
          EdgeInsets.symmetric(vertical: data.size.height / 82, horizontal: 18),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),

        //Actual textfield which gets input from the user.
        //the  max length = 10 and max lines = 1
        child: TextField(
          keyboardType: TextInputType.number,

          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
          decoration: InputDecoration(
            hintText: '9999999999',
            hintStyle: TextStyle(
              color: Color.fromRGBO(60, 61, 64, 1),
            ),
            counterText: '',
            border: InputBorder.none, //removes underline from textfield
          ),
          maxLength: 10,
          maxLines: 1,
          cursorHeight: 20,
          cursorWidth: 4,
          cursorRadius: Radius.circular(2),
          textAlign: TextAlign.start,
          style: TextStyle(
              color: Colors.white,
              //letterSpacing: 10,
              fontSize: 18),
          //cursorColor: Color(0xFFFFCBC4),
        ),
      ),
    );
  }
}
