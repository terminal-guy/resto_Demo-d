import 'package:flutter/material.dart';

var klockBackground = LinearGradient(
  colors: [
    Color(0xfffc46aa),
    Color(0xff6262e5),
  ],
  begin: Alignment.topRight,
  end: Alignment.bottomRight,
);
// Alignment.topCenter, end: Alignment.bottomLeft
// Color(0xffff00cc),
//   Color(0xff333399),

var kNavcolour = Color(0xff533779);

var kNumberText = TextStyle(
  color: Color(0xFF533779),
  fontSize: 25.0,
);

var kTextFieldStyle = InputDecoration(
  hintText: '',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.purple, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xff533779), width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
