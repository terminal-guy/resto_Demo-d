import 'package:flutter/foundation.dart';
import 'package:resto/Alarm/classes/alarmclass.dart';

class AlarmData extends ChangeNotifier {
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

  int get alarmDatacount {
    return alarms.length;
  } // gets the count of the length in alarm list

}
