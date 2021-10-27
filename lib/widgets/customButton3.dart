import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:webinerd/Screens/login.dart';

class Custombutton3 extends StatefulWidget {
  @override
  _Custombutton3State createState() => _Custombutton3State();
}

class _Custombutton3State extends State<Custombutton3> {
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
                  width: 180,
                  borderRadius: 75,
                  depth: 10,
                  spread: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          //color: Color(0xffffcbc4),
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ))),
          // onTap: () {
          //   Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //           builder: (context) =>
          //               // LoginScreen())); //ontap directs to next page
          // },
        ),
      ),
    );
  }
}
