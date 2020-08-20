import 'package:flutter/material.dart';
import 'package:resto/Alarm/screens/modal_sheet.dart';

class FABbutton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0,
      height: 70.0,
      child: RawMaterialButton(
        materialTapTargetSize: MaterialTapTargetSize.padded,
        fillColor: Color(0xffff2982),
        shape: CircleBorder(),
        elevation: 15.0,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 40.0,
        ),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) {
              return SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: ModalSheet(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
