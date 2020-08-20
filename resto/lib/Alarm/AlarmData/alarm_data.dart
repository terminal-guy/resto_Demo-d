import 'package:flutter/foundation.dart';
import 'package:resto/Alarm/classes/alarmclass.dart';

//* THE PROVIDER FOR THE ALARM
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

  DateTime _needAlarmTime;
  String _needAlarmtitle;

  // settters..

  set alarmTime(datetime) {
    _needAlarmTime = datetime;
    notifyListeners();
  }

  set alarmTitle(value) {
    _needAlarmtitle = value;
    notifyListeners();
  }

  // getters..

  DateTime get alarmTime => _needAlarmTime;
  String get alarmTitle => _needAlarmtitle;

  // add alarm... to the list..

  void addAlarm() {}

  // gets the count of the length in alarm list
  int get alarmDatacount {
    return alarms.length;
  }
}
