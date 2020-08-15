import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DisplayAlarm extends StatelessWidget {
  final String alarmTitle;
  final Function switchFunction;
  final String alarmTime;
  final bool switchValue;

  DisplayAlarm({
    this.switchFunction,
    this.alarmTime,
    this.alarmTitle,
    this.switchValue,
  });

  @override
  Widget build(BuildContext context) {
    String nonvalue = "null";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 35.0,
        ),
        ListTile(
          leading: Icon(
            Icons.alarm,
            color: Colors.white,
            size: 40.0,
          ),
          title: Text(
            alarmTime == null ? nonvalue : alarmTime,
            style: TextStyle(
              color: Color(0xFFf4ecff),
              fontSize: 40.0,
            ),
          ),
          subtitle: Text(
            alarmTitle == null ? nonvalue : alarmTitle,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 20.0,
            ),
          ),
          trailing: CupertinoSwitch(
            value: switchValue == null ? false : true,
            activeColor: Color(0xFFfe2981),
            // onChanged: switchFunction,
          ),
        )
      ],
    );
  }
}
