import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String quesText;

  const Question(this.quesText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        quesText,
        style: const TextStyle(fontSize: 32),
        textAlign: TextAlign.center,
      ),
    );
  }
}
