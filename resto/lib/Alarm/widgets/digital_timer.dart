import 'package:flutter/material.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';

class TimerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DigitalClock(
        is24HourTimeFormat: false,
        showSecondsDigit: true,
        areaDecoration: BoxDecoration(
          border: Border.all(color: Colors.transparent),
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFFf4ecff),
        ),
        hourMinuteDigitTextStyle: TextStyle(
            color: Colors.purple, fontSize: 50, fontWeight: FontWeight.bold),
        amPmDigitTextStyle: TextStyle(
          color: Colors.purple,
          fontWeight: FontWeight.bold,
        ),
        secondDigitTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.purple,
          fontSize: 50,
        ));
  }
}
