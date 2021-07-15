import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 3},
        {'text': 'Blue', 'score': 2},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 10},
        {'text': 'Elephant', 'score': 4},
        {'text': 'Lion', 'score': 8},
      ],
    },
    {
      'questionText': 'What\'s your favorite Icecream',
      'answers': [
        {'text': 'Strawbery', 'score': 3},
        {'text': 'ButterScotch', 'score': 6},
        {'text': 'Venila', 'score': 5},
        {'text': 'Black Forest', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your Role Model',
      'answers': [
        {'text': 'Stephen Hawking', 'score': 2},
        {'text': 'Hitler', 'score': 10},
        {'text': 'Nelson Mandela', 'score': 3},
        {'text': 'Ambraham Lincoln', 'score': 4},
      ],
    },
     {
      'questionText': 'What\'s your favorite Tv Show',
      'answers': [
        {'text': 'Friends', 'score': 1},
        {'text': 'Scam1992', 'score': 2},
        {'text': 'Dark', 'score': 10},
        {'text': 'Money Heist', 'score': 3},
      ],
    },
  ];
  var questionIndex = 0;
  var totalScore = 0;
  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void ansQuestion(int score) {
    totalScore += score;

    setState(() {
      questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz app'),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                ansQuestion: ansQuestion,
                questionIndex: questionIndex,
                questions: questions,
              )
            : Result(totalScore, resetQuiz),
      ),
    );
  }
}
