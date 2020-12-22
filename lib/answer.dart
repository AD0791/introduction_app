import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final Function btnHandler; // call back
  final String anstext;
  Answer(this.btnHandler,this.anstext);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child:Text(anstext),
        onPressed: btnHandler),
    );
  }
}