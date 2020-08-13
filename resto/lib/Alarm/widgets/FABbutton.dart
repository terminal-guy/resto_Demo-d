import 'package:flutter/material.dart';

class FABbutton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0,
      height: 70.0,
      child: RawMaterialButton(
        fillColor: Color(0xffff2982),
        shape: CircleBorder(),
        elevation: 15.0,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}
