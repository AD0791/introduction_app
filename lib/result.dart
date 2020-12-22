import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resulteScore;
  final Function resetHandler;
  Result(this.resulteScore,this.resetHandler);
  String get resPhrase {
    String resText;
    if(resulteScore <= 8 ){
      resText = "You must retake the test";
    } else if(resulteScore <= 12){
      resText = "You must be good";
    } else{
      resText= "You need Jesus!";
    }
    return resText;
  } // getter
  @override
  Widget build(BuildContext context) {
    return Center(child: 
      Column(
        children: [
          Text(resPhrase,
            style: TextStyle(fontSize: 36,
              fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(onPressed: resetHandler,
           child: Text("Restart the Quiz"),
           textColor: Colors.blue
          )
        ],
      ),
    );
  }
}