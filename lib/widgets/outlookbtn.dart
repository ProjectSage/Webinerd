import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class outlookButton extends StatelessWidget {
  const outlookButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color baseColor = Color(0xFF26272C);
    return Scaffold(
        backgroundColor: baseColor,
        body: SizedBox(
          child: GestureDetector(
            child: Center(
              child: ClayContainer(
                color: baseColor,
                height: 150,
                width: 150,
                borderRadius: 15,
                depth: 10,
                spread: 5,
                child: Padding(
                  padding: EdgeInsets.all(2),
                  child: Image.asset("assets/outlook.png"),
                ),
              ),
            ),
            /*onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OnBoardingScreen()));
            },*/
          ),
        ));
  }
}
