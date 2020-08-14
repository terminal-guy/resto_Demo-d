import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:resto/constants.dart';
import 'package:numberpicker/numberpicker.dart';

int hour = 0;
int minutes = 0;
int seconds = 0;

class ModalSheet extends StatefulWidget {
  @override
  _ModalSheetState createState() => _ModalSheetState();
}

List<FlatButton> getthehours() {
  List<FlatButton> getText = [];
  for (var i = 0; i < hours.length; i++) {
    String hour = hours[i];
    var newitem = FlatButton(
        onPressed: () {},
        child: Text(
          hour,
          style: kNumberText,
        ));

    getText.add(newitem);
  }
  return getText;
}

class _ModalSheetState extends State<ModalSheet> {
  @override
  Widget build(BuildContext context) {
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
            child: Row(
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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(bottom: 15.0, left: 10.0),
                        child: Text(
                          'Seconds',
                          style: kNumberText.copyWith(fontSize: 25.0),
                        ),
                      ),
                      NumberPicker.integer(
                        initialValue: seconds,
                        minValue: 0,
                        maxValue: 60,
                        onChanged: (value) {
                          setState(() {
                            seconds = value;
                          });
                        },
                      ),
                    ],
                  ),
                ])));
  }
}

List<String> hours = [
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
  '9',
  '10',
  '11',
  '12',
];

//  Text('Minutes'),
//             NumberPicker.integer(
//               initialValue: minutes,
//               minValue: 1,
//               maxValue: 60,
//               onChanged: (value) {
//                 minutes = value;
//               },
//             ),
//             Text('seconds'),
//             NumberPicker.integer(
//               initialValue: seconds,
//               minValue: 1,
//               maxValue: 60,
//               onChanged: (value) {
//                 seconds = value;
//               },
//             )
