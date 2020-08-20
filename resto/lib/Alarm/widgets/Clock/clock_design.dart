import 'package:flutter/material.dart';
import 'package:analog_clock/analog_clock.dart';
import 'package:resto/constants.dart';

class ClockDesign extends StatefulWidget {
  @override
  _ClockDesignState createState() => _ClockDesignState();
}

class _ClockDesignState extends State<ClockDesign> {
  @override
  Widget build(BuildContext context) {
    return AnalogClock(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
          // border: Border.all(width: 2.0, color: Colors.white),
          gradient: klockBackground,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.black38,
                blurRadius: 8,
                spreadRadius: 2,
                offset: Offset(7, 10))
          ]),
      isLive: true,
      hourHandColor: Colors.white,
      minuteHandColor: Colors.white,
      showSecondHand: true,
      secondHandColor: Colors.white,
      showAllNumbers: false,
      showNumbers: false,
      showTicks: true,
      tickColor: Colors.white,
      showDigitalClock: false,
    );
  }
}
