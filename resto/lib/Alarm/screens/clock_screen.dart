import 'package:flutter/material.dart';
import 'package:resto/Alarm/widgets/add_alarms.dart';
import 'package:resto/Alarm/widgets/clock_design.dart';
import 'package:resto/Alarm/widgets/digital_timer.dart';
import 'package:resto/Alarm/widgets/navigationrow.dart';
import 'package:resto/Alarm/widgets/FABbutton.dart';

class ClockScreen extends StatefulWidget {
  @override
  _ClockScreenState createState() => _ClockScreenState();
}

class _ClockScreenState extends State<ClockScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFf4ecff),
        body: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            TopNavigationRowFunc(), //GO TO THE NAVIGATION ROW
            SizedBox(
              height: 1.0,
            ),
            Container(
              height: 300,
              width: 500,
              alignment: Alignment.center,
              child: ClockDesign(),
            ),
            TimerWidget(),
            SizedBox(
              height: 15.0,
            ),
            Stack(
              children: <Widget>[
                AddAlarm(),
                Positioned(
                  child: FABbutton(),
                  bottom: 205,
                  right: 5,
                  left: 5,
                )
              ],
              overflow: Overflow.visible,
            ),
          ],
        ),
      ),
    );
  }
}
