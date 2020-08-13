import 'package:flutter/material.dart';

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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              color: Colors.purple,
              size: 40.0,
            ),
            Text(
              lable,
              style: TextStyle(
                color: Colors.purple,
              ),
            )
          ],
        ));
  }
}
