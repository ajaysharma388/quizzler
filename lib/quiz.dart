import 'package:flutter/material.dart';

import './questionbank.dart';

QuestionBank q = QuestionBank();

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int score = 0;
  int cur_question = 0;
  List<Icon> scoreKeeper = [];
  void check(bool a, int Q) {
    if (q.question[Q].QuestionAnswer == a) {
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
    cur_question = cur_question + 1;
  }

  @override
  Widget build(BuildContext context) {
    int val = q.question.indexOf(q.question.last) + 1;
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
                  (cur_question < val)
                      ? q.question[cur_question].QuestionStatement
                      : 'Your score is $score out of $val',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
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
                    fontSize: 25.0,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    check(true, cur_question);
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
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    check(false, cur_question);
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
