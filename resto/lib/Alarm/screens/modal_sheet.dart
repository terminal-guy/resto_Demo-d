import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:resto/Alarm/AlarmData/alarm_data.dart';
import 'package:resto/Alarm/widgets/Add_Alarm/model_sheet_Data.dart';
import 'package:resto/constants.dart';

class ModalSheet extends StatefulWidget {
  @override
  _ModalSheetState createState() => _ModalSheetState();
}

class _ModalSheetState extends State<ModalSheet> {
  @override
  Widget build(BuildContext context) {
    String newAlarmTitle;
    return Container(
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFf4ecff),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60.0),
            topRight: Radius.circular(60.0),
            bottomLeft: Radius.circular(60.0),
            bottomRight: Radius.circular(60.0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 60.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20.0),
              child: TextField(
                decoration: kTextFieldStyle.copyWith(
                  hintText: "Enter Your Alarm Title",
                ),
                onChanged: (String value) {
                  newAlarmTitle = value;
                },
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ModelSheetData(),
            SizedBox(
              height: 50,
            ),
            FlatButton(
              onPressed: () {
                // add the alarm to the listtile
              },
              padding: EdgeInsets.only(
                  top: 15.0, bottom: 15.0, left: 20.0, right: 20.0),
              color: kNavcolour,
              child: Text(
                'Add Alarm',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
