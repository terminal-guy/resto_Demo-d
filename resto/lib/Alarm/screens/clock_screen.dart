import 'package:flutter/material.dart';
import 'package:resto/Alarm/widgets/clock_design.dart';
import 'package:resto/Alarm/widgets/digital_timer.dart';
import 'package:resto/Alarm/widgets/navigationrow.dart';

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
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    width: 2.0,
                  ),
                  TopNavigationRow(
                    lable: 'Alarm',
                    icon: Icons.alarm,
                    ispressed: () {},
                  ),
                  TopNavigationRow(
                    lable: 'Todo',
                    icon: Icons.playlist_add_check,
                    ispressed: () {},
                  ),
                  TopNavigationRow(
                    lable: 'Timer',
                    icon: Icons.shutter_speed,
                    ispressed: () {},
                  ),
                  TopNavigationRow(
                    lable: 'DashBoard',
                    icon: Icons.timeline,
                    ispressed: () {},
                  ),
                  SizedBox(
                    width: 2.0,
                  )
                ]),
            Container(
              height: 300,
              width: 500,
              alignment: Alignment.center,
              child: ClockDesign(),
            ),
            TimerWidget(),
          ],
        ),
      ),
    );
  }
}
