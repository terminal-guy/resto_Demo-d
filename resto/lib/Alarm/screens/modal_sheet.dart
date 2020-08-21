import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:resto/Alarm/AlarmData/alarm_data.dart';
import 'package:resto/Alarm/widgets/Add_Alarm/model_sheet_Data.dart';
import 'package:resto/constants.dart';
import 'package:resto/main.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class ModalSheet extends StatefulWidget {
  @override
  _ModalSheetState createState() => _ModalSheetState();
}

class _ModalSheetState extends State<ModalSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFf4ecff),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60.0),
            topRight: Radius.circular(60.0),
            bottomLeft: Radius.circular(60.0),
            bottomRight: Radius.circular(60.0),
          ),
        ),
        child: Consumer<AlarmData>(
          builder: (context, alarmtime, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 60.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20.0),
                  child: TextField(
                    decoration: kTextFieldStyle.copyWith(
                      hintText: "Enter Your Alarm Title",
                    ),
                    onChanged: (String value) {
                      alarmtime.alarmTitle = value;
                      print(alarmtime.alarmTitle);
                    },
                  ), // gets the changed value by provider
                ),
                SizedBox(
                  height: 50,
                ),
                ModelSheetData(),
                SizedBox(
                  height: 50,
                ),
                FlatButton(
                  onPressed: () {
                    // add the alarm to the listtile
                    if (alarmtime.alarmAMPM != null) {
                      alarmtime.addAlarm();
                      print('getthe alarm');
                      alarmtime.alarmTitle = null;
                      alarmtime.alarmAMPM = null;
                      Navigator.pop(context);
                    }
                    scheduleAlarm();
                  },
                  padding: EdgeInsets.only(
                      top: 15.0, bottom: 15.0, left: 20.0, right: 20.0),
                  color: kNavcolour,
                  child: Text(
                    'Add Alarm',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

void scheduleAlarm() async {
  var scheduledNotificationDateTime = DateTime.now().add(Duration(seconds: 10));

  var androidPlatformChannelSpecifics = AndroidNotificationDetails(
    'alarm_notif',
    'alarm_notif',
    'Channel for Alarm notification',
    icon: 'code_logo',
    sound: RawResourceAndroidNotificationSound('summer'),
    largeIcon: DrawableResourceAndroidBitmap('code_logo'),
  );

  var iOSPlatformChannelSpecifics = IOSNotificationDetails(
      sound: 'a_long_cold_sting.wav',
      presentAlert: true,
      presentBadge: true,
      presentSound: true);
  var platformChannelSpecifics = NotificationDetails(
      androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);
  await flutterLocalNotificationsPlugin.schedule(
      0,
      'Office',
      'Good morning! Time for office.',
      scheduledNotificationDateTime,
      platformChannelSpecifics);
}
