import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resto/Alarm/service/alarm_data.dart';
import 'package:resto/Alarm/widgets/Add_Alarm/displayalarm.dart';
import 'package:provider/provider.dart';

class AlarmBottomSheet extends StatelessWidget {
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
      child: Consumer<AlarmData>(builder: (context, alarmData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return DisplayAlarm(
              alarmTime: alarmData.alarms[index].time,
              alarmTitle: alarmData.alarms[index].title,
              switchValue: alarmData.alarms[index].isOn,
            );
          },
          itemCount: alarmData.alarmDatacount,
        );
      }),
      // child: ListView(
      //   children: ,
      // )
    );
  }
}
