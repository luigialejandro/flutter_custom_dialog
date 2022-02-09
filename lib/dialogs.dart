import 'package:custom_dialog_flutter_demo/custom_dialog_box.dart';
import 'package:flutter/material.dart';

class Dialogs extends StatefulWidget {
  final title;
  final descriptions;
  final text;

  const Dialogs({
    Key key,
    this.title,
    this.descriptions,
    this.text,
  }) : super(key: key);

  @override
  _DialogsState createState() => _DialogsState();
}

class _DialogsState extends State<Dialogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Dialog In Flutter"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: Center(
          child: IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CustomDialogBox(
                      title: widget.title,
                      descriptions: widget.descriptions,
                      text: widget.text,
                    );
                  });
            },
            icon: Image.asset('assets/info.png'),
            iconSize: 200,
          ),
        ),
      ),
    );
  }
}
