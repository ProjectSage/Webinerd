import 'package:flutter/material.dart';

class Customline extends StatefulWidget {
  @override
  _CustomlineState createState() => _CustomlineState();
}

class _CustomlineState extends State<Customline> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 0, right: 0),
      height: 2,
      width: 500,
      decoration: BoxDecoration(
        color: Color(0xffffffff).withOpacity(0.1),
        //color: Color(0xff26272c).withOpacity(0.6),
        //color: Color(0xff000000).withOpacity(0.6),
        borderRadius: BorderRadius.only(),
        boxShadow: [
          BoxShadow(
            color: Color(0xff000000).withOpacity(0.2),
            //color: Color(0xffffffff).withOpacity(0.1),
            spreadRadius: 1,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
    );
  }
}
