import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sms_autofill/sms_autofill.dart';

class OtpInput extends StatefulWidget {
  @override
  _OtpinputState createState() => _OtpinputState();
}

class _OtpinputState extends State<OtpInput> {
  

  @override
  Widget build(BuildContext context) {
    Color baseColor = Color(0xFF26272C);

    return Scaffold(
      backgroundColor: baseColor,
      body: SizedBox(
        child: Center(
          child: ClayContainer(
            color: baseColor,
            height: 48,
            width: 48,
            borderRadius: 15,
            depth: 10,
            spread: 10,
            child: Padding(
              padding: EdgeInsets.all(2),
              child: TextField(
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(
                  counterText: '',
                  border: InputBorder.none, //removes underline from textfield
                ),
                maxLength: 1,
                cursorHeight: 20,
                cursorWidth: 4,
                cursorRadius: Radius.circular(2),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }

  
}
