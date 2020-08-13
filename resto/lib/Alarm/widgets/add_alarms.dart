import 'package:flutter/material.dart';

class AddAlarm extends StatefulWidget {
  @override
  _AddAlarmState createState() => _AddAlarmState();
}

class _AddAlarmState extends State<AddAlarm> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff533779),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
        ),
        height: 260,
        width: 400,
        child: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}
