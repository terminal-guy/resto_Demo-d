import 'package:flutter/material.dart';
import 'package:resto/constants.dart';

class TopNavigationRowFunc extends StatefulWidget {
  @override
  _TopNavigationRowFuncState createState() => _TopNavigationRowFuncState();
}

class _TopNavigationRowFuncState extends State<TopNavigationRowFunc> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        SizedBox(
          width: 2.0,
        ),
        TopNavigationRow(
          lable: 'More Apps',
          icon: Icons.apps,
          ispressed: () {},
        ),
        TopNavigationRow(
          lable: 'Alarm',
          icon: Icons.alarm,
          ispressed: () {},
        ),
        TopNavigationRow(
          lable: 'Todo',
          icon: Icons.playlist_add_check,
          ispressed: () {},
        ),
        TopNavigationRow(
          lable: 'Timer',
          icon: Icons.shutter_speed,
          ispressed: () {},
        ),
        SizedBox(
          width: 2.0,
        )
      ],
    );
  }
}

class TopNavigationRow extends StatelessWidget {
  final IconData icon;
  final String lable;
  final Function ispressed;

  TopNavigationRow({
    @required this.icon,
    @required this.lable,
    @required this.ispressed,
  });

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: ispressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              color: kNavcolour,
              size: 40.0,
            ),
            Text(
              lable,
              style: TextStyle(
                color: kNavcolour,
              ),
            )
          ],
        ));
  }
}
