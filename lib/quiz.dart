import 'package:flutter/material.dart';

import './questionbank.dart';

QuestionBank q = QuestionBank();

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int score = 0;
  List<Icon> scoreKeeper = [];
  void check(bool a) {
    if (q.getQA() == a) {
      scoreKeeper.add(Icon(
        Icons.check,
        color: Colors.green,
      ));
      score = score + 1;
    } else {
      scoreKeeper.add(Icon(
        Icons.close,
        color: Colors.red,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    int val = q.getTotalQuestion();
    return Scaffold(
      backgroundColor: Colors.lightBlue[500],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  (q.ifValidQuestion())
                      ? q.getQuestionStatement() + ' ?'
                      : 'Your score is $score out of $val',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontFamily: 'Pacifico',
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
                textColor: Colors.white,
                color: Colors.green,
                child: Text(
                  'True',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontFamily: 'Pacifico',
                  ),
                ),
                onPressed: () {
                  setState(() {
                    check(true);
                  });
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
                color: Colors.red,
                child: Text(
                  'False',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontFamily: 'Pacifico',
                  ),
                ),
                onPressed: () {
                  setState(() {
                    check(false);
                  });
                },
              ),
            ),
          ),
          Row(
            children: scoreKeeper,
          )
        ],
      ),
    );
  }
}
