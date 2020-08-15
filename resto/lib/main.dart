import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resto/Alarm/service/alarm_data.dart';
import 'Alarm/screens/clock_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AlarmData(),
      child: MaterialApp(
        theme: ThemeData.light().copyWith(
          canvasColor: Colors.transparent,
        ),
        home: ClockScreen(),
      ),
    );
  }
}
