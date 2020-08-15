import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resto/Alarm/classes/alarmclass.dart';

class AlarmBottomSheet extends StatefulWidget {
  @override
  _AlarmBottomSheetState createState() => _AlarmBottomSheetState();
}

class _AlarmBottomSheetState extends State<AlarmBottomSheet> {
  List<Alarm> alarms = [
    Alarm(
      time: "4:30",
      title: "for gym",
    ),
    Alarm(
      time: "8:30",
      title: "for milk",
    ),
    Alarm(
      time: "9:45",
      title: "for walk",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff533779),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
      ),
      height: MediaQuery.of(context).size.height * 0.355,
      width: 400,
      child: ListView(
        children: <Widget>[
          DisplayAlarm(
            alarmTime: alarms[0].time,
            alarmTitle: alarms[0].title,
          ),
          DisplayAlarm(
            alarmTime: alarms[1].time,
            alarmTitle: alarms[1].title,
          ),
          DisplayAlarm(
            alarmTime: alarms[2].time,
            alarmTitle: alarms[2].title,
          )
        ],
      ),
      // child: ListView(
      //   children: ,
      // )
    );
  }
}

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
            onChanged: switchFunction,
          ),
        )
      ],
    );
  }
}
