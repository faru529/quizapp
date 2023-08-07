import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const <Map<String?, Object>>[
    {
      'quexText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 7},
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 5},
        {'text': 'Green', 'score': 2},
      ],
    },
    {
      'quexText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Bear', 'score': 7},
        {'text': 'Cat', 'score': 1},
        {'text': 'Bat', 'score': 10},
        {'text': 'Goat', 'score': 5},
      ],
    },
    {
      'quexText': 'Who\'s your fav artist?',
      'answers': [
        {'text': 'BTS', 'score': 2},
        {'text': 'Justin Beiber', 'score': 7},
        {'text': 'Armaan Malik', 'score': 5},
        {'text': 'Coldplay', 'score': 6},
      ],
    },
  ];
  var _quesIndex = 0;
  var _totalscore = 0;

  void _resetQuiz() {
    setState(() {
      _quesIndex = 0;
      _totalscore = 0;
    });
  }

  void _ansQues(int score) {
    //var aBool = true;
    //aBool = false;

    _totalscore += score;

    setState(() {
      _quesIndex = _quesIndex + 1;
    });

    print(_quesIndex);
    if (_quesIndex < _questions.length) {
      print('We have more ques');
    } else {
      print('No more ques');
    }
  }

  @override
  Widget build(BuildContext context) {
    //var dummy = ['hello'];
    //dummy.add('max');
    //print(dummy);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text(
          'My First App',
        )),
        body: _quesIndex < _questions.length
            ? Quiz(
                ansQues: _ansQues,
                quesIndex: _quesIndex,
                questions: _questions,
              )
            : Result(_totalscore, _resetQuiz),
      ),
    );
  }
}
