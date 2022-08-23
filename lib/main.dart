import 'package:basic/quiz.dart';
import 'package:basic/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "What's your favorite color?",
      "answer": ["Black", "Red", "Green", "White"]
    },
    {
      "questionText": "What's your favorite animal?",
      "answer": ["Cat", "Rabbit", "Fish", "Bird"]
    },
    {
      "questionText": "Who's your favorite actor?",
      "answer": ["Jackie Chan", "Iko", "Mat Dog"]
    }
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : const Result(),
      ),
    );
  }
}
