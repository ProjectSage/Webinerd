import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'package:flutter_application/Screens/permissionScreen.dart';

class SignInBtn extends StatefulWidget {
  @override
  _SignInBtnState createState() => _SignInBtnState();
}

class _SignInBtnState extends State<SignInBtn> {
  @override
  Widget build(BuildContext context) {
    Color baseColor = Color(0xFF26272C);
    final data = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: baseColor,
      body: GestureDetector(
        child: Center(
          child: ClayContainer(
            color: baseColor,
            height: data.size.height / 15,
            width: data.size.width / 2,
            borderRadius: data.size.height / 20,
            depth: 10,
            spread: 10,
            child: Padding(
              padding: EdgeInsets.all(0),
              child: Image.asset("assets/Signin.png",
                  height: data.size.height / 2, width: data.size.width / 20),
            ),
          ),
        ),
        // onTap: () {
        //   Navigator.push(context,
        //       // MaterialPageRoute(builder: (context) => PermissionScreen()));
        // },
      ),
    );
  }
}
