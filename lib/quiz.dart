import 'package:flutter/material.dart';

import './question.dart';

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int score = 0;
  int cur_question = 0;
  List<Question> question = [
    Question(q: 'Did lary page started google?', a: true),
    Question(q: 'Did Paytm is US Based Company?', a: false),
    Question(q: 'Is Kohli is still a captian for india?', a: true),
    Question(q: 'Delhi is complete state in india?', a: false),
    Question(q: 'PM Modi is feku?', a: true),
    Question(q: 'Rahul Gandhi Can be a next PM?', a: true),
  ];
  List<Icon> scoreKeeper = [];
  void check(bool a, int q) {
    if (question[q].QuestionAnswer == a) {
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
    int val = question.indexOf(question.last) + 1;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                (cur_question < 6)
                    ? question[cur_question].QuestionStatement
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
                  fontSize: 20.0,
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
                  fontSize: 20.0,
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
    );
  }
}
