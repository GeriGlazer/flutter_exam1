// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import './textControl.dart';
import './appBody.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

 int keyPointer = 1;
  @override
  void _questionState(){    

    setState((){
      keyPointer+=keyPointer;
    });
  }

  @override
  Widget build(BuildContext context) {
   

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('FlutterExam-1'),
          ),
          body: AppBody(
            keyPointer: keyPointer,
            selectHandler: _questionState,
          )),
    );
  }
}
