import 'package:flutter/material.dart';
import 'package:flutter_custom_alertdialog/ui/components/DialogWidget.dart';

enum DialogButtonType { SINGLE_BUTTON, MULTI_BUTTON }

class CustomAlertDialog {
  final BuildContext context;
  final String title;
  final String description;
  final DialogButtonType buttonType;
  final List<Widget> buttonList;
  final Function onClose;

  CustomAlertDialog({this.context, this.title, this.description, this.buttonType, this.buttonList, this.onClose});

  show() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogWidget();
        });
  }
}
