import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import './questionbank.dart';

QuestionBank q = QuestionBank();

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int score = 0;
  int totalQuestions = q.getTotalQuestion();
  List<Icon> scoreKeeper = [];

  _onBasicAlertPressed(context) {
    Alert(
      context: context,
      title: "Quiz Over",
      desc:
          "Congratulation's you have completed the quiz.\n Your is $score out of"
          " $totalQuestions",
    ).show();
  }

  void check(bool a, BuildContext context) {
    setState(() {
      if (q.getCorrectAnswer() == a) {
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
      q.nextQuestion();
      if (!q.isFinished()) {
        scoreKeeper.clear();
        _onBasicAlertPressed(context);
        score = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
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
                  q.getQuestionText(),
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
                  check(true, context);
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
                  check(false, context);
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
