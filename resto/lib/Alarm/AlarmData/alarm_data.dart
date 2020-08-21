import 'package:flutter/foundation.dart';
import 'package:resto/Alarm/classes/alarmclass.dart';

//* THE PROVIDER FOR THE ALARM
class AlarmData extends ChangeNotifier {
  List<Alarm> alarms = [
    Alarm(
      time: "4:30 AM",
      description: "for gym",
    ),
    Alarm(
      time: "8:30 AM",
      description: "for milk",
    ),
    Alarm(
      time: "6:45 AM",
      description: "for walk",
    ),
  ];

  DateTime _needAlarmTime;
  String _needAlarmtitle;
  String _needAlarmAMPM;

  // settters..

  set alarmTime(datetime) {
    _needAlarmTime = datetime;
    notifyListeners();
  }

  set alarmAMPM(datetime) {
    _needAlarmAMPM = datetime;
    notifyListeners();
  }

  set alarmTitle(value) {
    _needAlarmtitle = value;
    notifyListeners();
  }

  // getters..
  String get alarmAMPM => _needAlarmAMPM;
  DateTime get alarmTime => _needAlarmTime;
  String get alarmTitle => _needAlarmtitle;

  // add alarm... to the list..

  void addAlarm() {
    alarms.add(
      Alarm(
        time: alarmAMPM,
        description: alarmTitle,
      ),
    );
    notifyListeners();
  }

  // gets the count of the length in alarm list
  int get alarmDatacount {
    return alarms.length;
  }
}
