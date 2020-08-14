import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:custom_switch/custom_switch.dart';

class AlarmListTile extends StatelessWidget {
  final Function amonpressed;
  final Text listTileTitle;
  final Text listTileTime;
  final Text subtitle;
  final bool switchValue;
  final Function switchFunction;

  AlarmListTile({
    this.amonpressed,
    this.listTileTitle,
    this.listTileTime,
    this.subtitle,
    this.switchFunction,
    this.switchValue,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: FlatButton(
        onPressed: amonpressed,
        child: Icon(
          Icons.wb_sunny,
          color: Colors.white,
        ),
      ),
      title: listTileTime,
      subtitle: listTileTitle,
      leading: CustomSwitch(
        activeColor: Colors.pinkAccent,
        value: switchValue,
        onChanged: switchFunction,
      ),
    );
  }
}
