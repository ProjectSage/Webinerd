import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State {
  startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(1, 26, 26, 29),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(left: 77, right: 77, top: 80, bottom: 8),
            child: Text(
              'WEBINERD',
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'OpenSans-Bold.ttf',
                  color: Color(0xFFFFFFFF)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(74, 8, 74, 30),
            child: Text(
              'Engaging a virtual audience',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'OpenSans-Regular.ttf',
                  color: Color(0xFF696964)),
            ),
          ),
          Image.asset('assets/splash.png'),
          //SvgPicture.asset('images/Saly-1.svg'),
        ],
      ),
    );
  }
}
