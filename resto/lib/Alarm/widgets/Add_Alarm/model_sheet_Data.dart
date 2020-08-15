import 'package:flutter/material.dart';
import 'package:resto/constants.dart';
import 'package:numberpicker/numberpicker.dart';

import '../../../constants.dart';

int hour = 0;
int minutes = 0;
int seconds = 0;

class ModelSheetData extends StatefulWidget {
  @override
  _ModelSheetDataState createState() => _ModelSheetDataState();
}

class _ModelSheetDataState extends State<ModelSheetData> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                bottom: 15.0,
                right: 5.0,
              ),
              child: Text(
                'Hours',
                style: kNumberText.copyWith(fontSize: 25.0),
              ),
            ),
            NumberPicker.integer(
              initialValue: hour,
              minValue: 0,
              maxValue: 12,
              onChanged: (value) {
                setState(() {
                  hour = value;
                });
              },
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                bottom: 15.0,
              ),
              child: Text(
                'Minutes',
                style: kNumberText.copyWith(fontSize: 25.0),
              ),
            ),
            NumberPicker.integer(
              initialValue: minutes,
              minValue: 0,
              maxValue: 60,
              onChanged: (value) {
                setState(() {
                  minutes = value;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
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
