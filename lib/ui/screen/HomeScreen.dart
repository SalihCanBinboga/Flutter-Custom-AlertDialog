import 'package:flutter/material.dart';

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
              openDialog();
            },
          ),
        ),
      ),
    );
  }

  openDialog() {}
}
