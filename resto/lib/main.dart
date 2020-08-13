import 'package:flutter/material.dart';
import 'Alarm/screens/clock_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: ClockScreen(),
    );
  }
}
