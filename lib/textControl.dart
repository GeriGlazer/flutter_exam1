import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  int keyPointer;

  TextControl({required this.keyPointer});

  String get selectText {
    String bodyText = 'Hi!!';
    if (keyPointer % 2 == 1) {
      bodyText = 'Is this a button??';
    } else {
      bodyText = 'YES!!!';
    }
    print(bodyText);
    return bodyText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        selectText,
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
    );
  }
}
