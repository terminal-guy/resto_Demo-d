import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:resto/Alarm/AlarmData/alarm_data.dart';
import 'package:day_night_time_picker/day_night_time_picker.dart';

class ModelSheetData extends StatefulWidget {
  @override
  _ModelSheetDataState createState() => _ModelSheetDataState();
}

class _ModelSheetDataState extends State<ModelSheetData> {
  var time;

  TimeOfDay _time = TimeOfDay.now();

  void onTimeChanged(TimeOfDay newTime) {
    setState(() {
      _time = newTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AlarmData>(
      builder: (context, alarmtime, child) {
        return Column(children: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color(0xFFf4ecff),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black38,
                      blurRadius: 8,
                      spreadRadius: 2,
                      offset: Offset(4, 5))
                ]),
            child: Column(
              // modal sheet components...
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.access_alarm),
                  title: Text('Time'),
                  trailing: Icon(Icons.keyboard_arrow_down),
                  onTap: () {
                    Navigator.of(context).push(
                      showPicker(
                          context: context,
                          value: _time,
                          onChange: onTimeChanged,
                          is24HrFormat: false,
                          // Optional onChange to receive value as DateTime
                          onChangeDateTime: (DateTime dateTime) {
                            // setting the value for the setter
                            time = DateFormat.jm().format(dateTime);

                            // modified date am time
                            alarmtime.alarmAMPM = time;
                            //actually time in datetime
                            alarmtime.alarmTime = dateTime;
                            // print(dateTime);
                            // TODO delete it after finished the application
                            print(alarmtime.alarmTime);
                            print(alarmtime.alarmAMPM);
                          }),
                    );
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                ListTile(
                  leading: Icon(Icons.repeat),
                  title: Text('Repeat'),
                  trailing: Icon(Icons.keyboard_arrow_down),
                ),
              ],
            ),
          ),
        ]);
      },
    );
  }
// Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//                 Text(
//                   r"AM" "$hour" ":" "$minutes" ":" "$seconds",
//                   style: kNumberText,
//                 )
//               ],
//             ),
//           ],
//         ),
}
