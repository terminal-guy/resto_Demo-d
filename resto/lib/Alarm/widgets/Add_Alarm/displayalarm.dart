import 'package:easy_rich_text/easy_rich_text.dart';
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
    String nonvalue = "------------";
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
          title: EasyRichText(
            alarmTime == null ? nonvalue : alarmTime,
            defaultStyle: TextStyle(
              color: Color(0xFFf4ecff),
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
            patternList: [
              EasyRichTextPattern(
                targetString: 'AM',
                style: TextStyle(color: Colors.white54, fontSize: 20.0),
              ),
              EasyRichTextPattern(
                targetString: 'PM',
                style: TextStyle(color: Colors.white54, fontSize: 20.0),
              )
            ],
          ),
          // title: Text(
          //   alarmTime == null ? nonvalue : alarmTime,
          //   style: TextStyle(
          //     color: Color(0xFFf4ecff),
          //     fontSize: 40.0,
          //   ),
          // ),
          subtitle: Text(
            alarmTitle == null ? nonvalue : alarmTitle,
            style: TextStyle(
              color: Colors.white54,
              fontSize: 20.0,
            ),
          ),
          trailing: CupertinoSwitch(
            // implement alarm on function
            value: false, //switchValue == null ? false : true,
            activeColor: Color(0xffff2982),
            trackColor: Colors.white30,
            // onChanged: switchFunction,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Divider(
          thickness: 2,
          color: Colors.white24,
          endIndent: 50.0,
          indent: 50.0,
        )
      ],
    );
  }
}
