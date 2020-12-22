import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questions;
  final Function answerQuestion;
  final int indexQ;
  Quiz({@required this.questions,
  @required this.answerQuestion,
  @required this.indexQ});
  @override
  Widget build(BuildContext context) {
    return Column(children: 
        [Question(questions[indexQ]["questionText"]),
          ...(questions[indexQ]["answers"] as List<Map<String,Object>>).map(
            (ans){
              return Answer(() => answerQuestion(ans["score"]), ans["text"]);
            }
          ).toList()
        ],) ;
  }
}