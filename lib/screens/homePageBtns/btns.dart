import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'package:flutter_application/Screens/permissionScreen.dart';

class Btns extends StatefulWidget {
  final Image img;

  Btns({this.img});

  @override
  _BtnsState createState() => _BtnsState();
}

class _BtnsState extends State<Btns> {
  @override
  Widget build(BuildContext context) {
    Color baseColor = Color(0xFF26272C);
    final screen = MediaQuery.of(context);

    return Scaffold(
        backgroundColor: baseColor,
        body: SizedBox(
          child: GestureDetector(
            child: Center(
              child: ClayContainer(
                color: baseColor,
                height: screen.size.height / 20,
                width: 40,
                borderRadius: 15,
                depth: 10,
                spread: 10,
                child: Padding(
                  padding: EdgeInsets.all(2),
                  child: widget.img,
                ),
              ),
            ),
            // onTap: () {
            //   Navigator.push(context,
            //       // MaterialPageRoute(builder: (context) => PermissionScreen()));
            // },
          ),
        ));
  }
}
