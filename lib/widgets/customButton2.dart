import 'package:flutter/material.dart';
import 'package:clay_containers/clay_containers.dart';

import '../Screens/otpScreen.dart';

class Custombutton2 extends StatefulWidget {
  @override
  _Custombutton2State createState() => _Custombutton2State();
}

class _Custombutton2State extends State<Custombutton2> {
  @override
  Widget build(BuildContext context) {
    Color baseColor = Color(0xFFF26272C);

    return Scaffold(
      backgroundColor: baseColor,
      body: SizedBox(
        child: GestureDetector(
          child: Center(
              child: ClayContainer(
                  color: baseColor,
                  height: 65,
                  width: 230,
                  borderRadius: 75,
                  depth: 10,
                  spread: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Center(
                      child: Text(
                        "Grant Permissions",
                        style: TextStyle(
                          color: Color(0xffffcbc4),
                        ),
                      ),
                    ),
                  ))),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        OtpScreen())); //ontap directs to next page
          },
        ),
      ),
    );
  }
}
