import 'package:flutter/material.dart';

import './quiz.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue[500],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'QUIZZLER',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 45.0,
                          color: Colors.white,
                          fontFamily: 'Pacifico',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        width: 300,
                        child: Divider(
                          color: Colors.blue[900],
                        ),
                      ),
                      Text(
                        'A CHALLENGING QUIZ APP',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontFamily: 'Pacifico',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
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
                      'START QUIZ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Pacifico',
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                    ),
                    onPressed: () {
                      MaterialPageRoute(builder: (context) => Quizzler());
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
