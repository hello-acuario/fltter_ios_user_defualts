import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:ios_user_defaults/ios_user_defaults.dart';

const String SuiteMame = "group.junso.flutterplugins.iosuserdefaults.iosUserDefaultsExample";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String value = "";

  void getValue() async {
    var newValue = await IosUserDefaults.getStringWithSuiteName(SuiteMame, "words");
    setState(() {
      value = newValue;
    });
  }

  void setValue() async {
    IosUserDefaults.setStringWithSuiteName(SuiteMame, "words", "Hello World");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("iOS UserDefaults"),
        ),
        body: Column(
          children: <Widget>[
            Text(value),
            CupertinoButton(
              onPressed: setValue,
              child: Text('set value'),
            ),
            CupertinoButton(
              onPressed: getValue,
              child: Text('get value'),
            )
          ],
        ),
      ),
    );
  }
}
