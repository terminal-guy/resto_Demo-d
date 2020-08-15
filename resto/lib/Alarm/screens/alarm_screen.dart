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
      child: ListView.builder(
        itemBuilder: (context, index) {
          return DisplayAlarm(
            alarmTime: Provider.of<AlarmData>(context).alarms[index].time,
            alarmTitle: Provider.of<AlarmData>(context).alarms[index].title,
            switchValue: Provider.of<AlarmData>(context).alarms[index].isOn,
          );
        },
        itemCount: Provider.of<AlarmData>(context).alarms.length,
      ),
      // child: ListView(
      //   children: ,
      // )
    );
  }
}

// DisplayAlarm(
//             alarmTime: alarms[0].time,
//             alarmTitle: alarms[0].title,
//           ),
//           DisplayAlarm(
//             alarmTime: alarms[1].time,
//             alarmTitle: alarms[1].title,
//           ),
//           DisplayAlarm(
//             alarmTime: alarms[2].time,
//             alarmTitle: alarms[2].title,
//           )
