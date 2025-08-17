import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What kind of weekend sounds most appealing to you?',
      'answers': [
        {'text': 'Hiking in the Mountains', 'score': 10},
        {'text': 'Relaxing at the Beach', 'score': 5},
        {'text': 'Reading Books at Home', 'score': 8},
        {'text': 'Hanging Out with Friends', 'score': 6},
      ],
    },
    {
      'questionText': 'Which animal do you feel most connected to?',
      'answers': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Turtle', 'score': 6},
        {'text': 'Dolphin', 'score': 8},
        {'text': 'Owl', 'score': 9},
      ],
    },
    {
      'questionText': 'What\'s your ideal way to solve a problem?',
      'answers': [
        {'text': 'Think deeply and analyze', 'score': 9},
        {'text': 'Ask for help and collaborate', 'score': 7},
        {'text': 'Try different things until something works', 'score': 6},
        {'text': 'Take a break and come back with a fresh mind', 'score': 8},
      ],
    },
    {
      'questionText': 'Which color speaks to your soul?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 8},
        {'text': 'Green', 'score': 6},
        {'text': 'Purple', 'score': 9},
      ],
    },
    {
      'questionText': 'What motivates you the most?',
      'answers': [
        {'text': 'Achieving goals', 'score': 10},
        {'text': 'Helping others', 'score': 7},
        {'text': 'Making a difference', 'score': 9},
        {'text': 'Expressing yourself', 'score': 6},
      ],
    },
  ];

  void _answerChoice(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text('Personality Quiz'),
      backgroundColor: Colors.green,
    ),
    body: (_questionIndex < _questions.length)
        ? Quiz(
            answerChoice: _answerChoice,
            questions: _questions,
            questionIndex: _questionIndex,
          )
        : Result(_totalScore, _resetQuiz),
    bottomNavigationBar: const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "Developed by Abu Taher Siddiki Adnan",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 14, color: Colors.grey),
      ),
    ),
  ),
);
  }
}
