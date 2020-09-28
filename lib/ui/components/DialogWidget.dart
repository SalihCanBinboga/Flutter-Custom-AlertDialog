import 'package:flutter/material.dart';


class DialogWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: createDialogContainer(),
    );
  }

  Widget createDialogContainer() {
    return Container(
      height: 350,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          Text("Title"),
          Text("Description"),
        ],
      ),
    );
  }
}
