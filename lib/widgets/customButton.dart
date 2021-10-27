import 'package:flutter/material.dart';
import 'package:clay_containers/clay_containers.dart';
import 'package:webinerd/screens/permissionScreen.dart';

// import 'package:flutter_application/Screens/permissionScreen.dart';

class Custombutton extends StatefulWidget {
  final String name;
  final Color bgColor;
  final Color textColor;
  final bool isChecked;
  Custombutton({this.name, this.bgColor, this.textColor, this.isChecked});

  @override
  _CustombuttonState createState() => _CustombuttonState();
}

class _CustombuttonState extends State<Custombutton> {
  @override
  Widget build(BuildContext context) {
    Color baseColor = Color(0xFFF26272C);
    final screen = MediaQuery.of(context);
    return InkWell(
      onTap: () {
        if (widget.isChecked == true) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => PermissionScreen()));
          setState(() {
            // errorText = "";
          });
        } else {
          setState(() {
            // this.errorText = "Please Accept Terms & Conditions";
          });
        }
      },
      child: Scaffold(
        backgroundColor: baseColor,
        body: ClayContainer(
            color: baseColor,
            height: screen.size.height / 15,
            width: screen.size.width / 2,
            borderRadius: 75,
            depth: 10,
            spread: 10,
            child: Container(
              decoration: BoxDecoration(
                color: widget.bgColor,
                borderRadius: BorderRadius.circular(35.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    widget.name,
                    style: TextStyle(
                        color: widget.textColor,
                        fontSize: screen.size.height / 50),
                  ),
                ),
              ),
            )),
        // ),
      ),
    );
  }
}
