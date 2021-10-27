//import 'dart:async';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  final bool isChecked;
  CustomCheckBox({this.isChecked, selectedColor});

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool _isSelected = false;

  @override
  void initState() {
    // TODO: implement initState
    _isSelected = widget.isChecked;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            _isSelected = !_isSelected;
          });
        },
        child: Container(
          decoration: BoxDecoration(
              color: _isSelected ? Color(0xff86888d) : Colors.transparent,
              borderRadius: BorderRadius.circular(5.0),
              border: _isSelected
                  ? null
                  : Border.all(
                      color: Color(0xff86888d),
                      width: 2.0,
                    )),
          width: 25,
          height: 25,
          child: _isSelected
              ? Icon(
                  Icons.check,
                  color: Color(0xff26272c),
                )
              : null,
        ));
  }
}
