import 'package:flutter/material.dart';

import 'textControl.dart';

class AppBody extends StatelessWidget {
  int keyPointer;

  final VoidCallback selectHandler;

  AppBody({required this.keyPointer, required this.selectHandler});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextControl(keyPointer: keyPointer),
        ElevatedButton(
            onPressed: (selectHandler),
            child: Text('Want the answer?')),
      ],
    );
  }
}
