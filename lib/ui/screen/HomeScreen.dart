import 'package:flutter/material.dart';
import 'package:flutter_custom_alertdialog/ui/components/CustomAlertDialog.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom AlertDialog"),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            child: Text("Open Dialog"),
            onPressed: () {
              CustomAlertDialog(
                context: context,
                title: "Test Amaçlı Titledir",
                description: "Test Amaçlı Açıklamadır",
                onClose: () {
                  print('CUSTOM ALERT DİALOG KAPANDI');
                },
                buttonType: DialogButtonType.SINGLE_BUTTON
              ).show();
            },
          ),
        ),
      ),
    );
  }
}
