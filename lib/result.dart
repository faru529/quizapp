import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'That\'s Awesome!';
    } else if (resultScore <= 16) {
      resultText = 'Cool!!....';
    } else {
      resultText = 'That\'s Strange.....';
    }
    return resultText;
  }

  void _onRestartPressed(BuildContext context) {
    Future.delayed(Duration.zero, () {
      resetHandler();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              primary: Colors.black,
              side: const BorderSide(color: Color.fromARGB(255, 60, 4, 150)),
            ),
            onPressed: () => _onRestartPressed(context),
            child: const Text('Restart Quiz!'),
          ),
        ],
      ),
    );
  }
}
