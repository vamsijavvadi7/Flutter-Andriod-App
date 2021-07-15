import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resulText = 'You did it!';
    if (resultScore <= 15) {
      resulText = 'You are awesome and innocent!';
    } else if (resultScore <= 35) {
      resulText = 'You are Pretty likeable';
    } else if (resultScore <= 45) {
      resulText = 'You are .... Strange!';
    } else {
      resulText = "You are so bad!";
    }
    return resulText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              child: Text('Restart Quiz!'),
              onPressed: () => resetHandler(),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
