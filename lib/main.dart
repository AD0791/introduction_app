import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
void main() => runApp(MyApp());


class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}


class _MyAppState extends State<MyApp> {
  var _qind = 0;
  int _totalScore = 0;
  final _questions= const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];
  void _answerQ(int score){
    _totalScore+=score;
    setState(() {
      _qind += 1 ;
    }); 
  }
  void _resetQuiz(){
    setState(() {
      _totalScore = 0;
      _qind= 0;
    });
  }
  @override
  Widget build(BuildContext context){
    
    return MaterialApp(home: Scaffold(
        appBar: AppBar(
          title: Text("My first App"),
          ),
        body: _qind < _questions.length 
        ? Quiz(questions: _questions,
        answerQuestion:_answerQ,
        indexQ: _qind
        ) 
        : Result(_totalScore,_resetQuiz)
      )
    );
  }
}

