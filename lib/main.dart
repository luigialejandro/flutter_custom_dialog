import 'package:custom_dialog_flutter_demo/dialogs.dart';
import 'package:custom_dialog_flutter_demo/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dialogs(
          title: "Info minutiae",
          descriptions:
              "By means of this customized frame dialog, it is possible to display information and details about a particular subject without losing valuable space in the main route and accomplishing it in a fashionable rendering way",
          text: "Accept"),
    );
  }
}
