import 'package:flutter/cupertino.dart';
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
              openDialog();
            },
          ),
        ),
      ),
    );
  }

  void openDialog() {
    CustomAlertDialog(
      context: context,
      title: "Rezervasyon İptali",
      titleTextColor: Colors.black,
      titleTextSize: 18,
      titleTextFontWeight: FontWeight.normal,
      description: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Rezervasyon iptal edilecektir."),
          Text("Devam Edilsin mi ?"),
        ],
      ),
      singleButtonTitle: "Kapat",
      singleButtonColor: Colors.blue,
      singleButtonFontSize: 17,
      singleButtonTextColor: Colors.white,
      buttonType: DialogButtonType.MULTI_BUTTON,
      multiButtonAlignment: Alignment.center,
      buttonList: [
        Container(
          width: MediaQuery.of(context).size.width * .3,
          child: FlatButton(
            child: Text("Hayır"),
            onPressed: () => {},
          ),
        ),
        SizedBox(
          width: 2,
        ),
        Container(
          width: MediaQuery.of(context).size.width * .3,
          child: RaisedButton(
            child: Text(
              "Evet",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.redAccent,
            onPressed: () => {},
          ),
        ),
      ],
    ).show();
  }
}
