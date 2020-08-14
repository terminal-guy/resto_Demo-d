import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:resto/Alarm/widgets/model_sheet_Data.dart';
import 'package:resto/constants.dart';

class ModalSheet extends StatefulWidget {
  @override
  _ModalSheetState createState() => _ModalSheetState();
}

// List<FlatButton> getthehours() {
//   List<FlatButton> getText = [];
//   for (var i = 0; i < hours.length; i++) {
//     String hour = hours[i];
//     var newitem = FlatButton(
//         onPressed: () {},
//         child: Text(
//           hour,
//           style: kNumberText,
//         ));

//     getText.add(newitem);
//   }
//   return getText;
// }

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20.0),
              child: TextField(
                decoration: kTextFieldStyle.copyWith(
                  hintText: "Enter Your Alarm Title",
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            ModelSheetData(),
            FlatButton(
              onPressed: () {},
              padding: EdgeInsets.only(
                  top: 15.0, bottom: 15.0, left: 20.0, right: 20.0),
              color: kNavcolour,
              child: Text(
                'Add Alarm',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// List<String> hours = [
//   '1',
//   '2',
//   '3',
//   '4',
//   '5',
//   '6',
//   '7',
//   '8',
//   '9',
//   '10',
//   '11',
//   '12',
// ];

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
