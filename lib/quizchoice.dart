import 'package:flutter/material.dart';

import './quiz.dart';

class QuizChoice extends StatefulWidget {
  @override
  _QuizChoiceState createState() => _QuizChoiceState();
}

class _QuizChoiceState extends State<QuizChoice> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          child: ListTile(
              leading: FlutterLogo(),
              title: Text('C++ Quiz'),
              trailing: Icon(Icons.send),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuizPage(),
                  ),
                );
              }),
        ),
        Card(
          child: ListTile(
            leading: FlutterLogo(),
            title: Text('Java Quiz'),
            trailing: Icon(Icons.send),
          ),
        ),
        Card(
          child: ListTile(
            leading: FlutterLogo(),
            title: Text('Python Quiz'),
            trailing: Icon(Icons.send),
          ),
        ),
        Card(
          child: ListTile(
            leading: FlutterLogo(),
            title: Text('CSS Quiz'),
            trailing: Icon(Icons.send),
          ),
        ),
        Card(
          child: ListTile(
            leading: FlutterLogo(),
            title: Text('JavaScript Quiz'),
            trailing: Icon(Icons.send),
          ),
        ),
        Card(
          child: ListTile(
            leading: FlutterLogo(),
            title: Text('Sql Quiz'),
            trailing: Icon(Icons.send),
          ),
        ),
        Card(
          child: ListTile(
            leading: FlutterLogo(),
            title: Text('Angular Quiz'),
            trailing: Icon(Icons.send),
          ),
        ),
        Card(
          child: ListTile(
            leading: FlutterLogo(),
            title: Text('Ruby Quiz'),
            trailing: Icon(Icons.send),
          ),
        ),
        Card(
          child: ListTile(
            leading: FlutterLogo(),
            title: Text('Sports Quiz'),
            trailing: Icon(Icons.send),
          ),
        ),
        Card(
          child: ListTile(
            leading: FlutterLogo(),
            title: Text('Gernal Knowledge'),
            trailing: Icon(Icons.send),
          ),
        ),
        Card(
          child: ListTile(
            leading: FlutterLogo(),
            title: Text('Current Affairs'),
            trailing: Icon(Icons.send),
          ),
        ),
      ],
    );
  }
}
