import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function resetHandler;

  Result( this.finalScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (finalScore <= 17) {
      resultText = 'You are awesome (Score: $finalScore)';
    } else if (finalScore <= 25) {
      resultText = 'Pretty likable (Score: $finalScore)';
    } else if (finalScore <= 33) {
      resultText = 'Reserved Bro (Score: $finalScore)';
    } else {
      resultText = 'You are asshole (Score: $finalScore)';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text('Restart Quiz'),
            onPressed: () =>resetHandler,
          ),
        ],
      ),
    );
  }
}
