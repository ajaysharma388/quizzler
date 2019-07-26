import 'package:flutter/material.dart';

import './quiz.dart';

class QuizChoice extends StatefulWidget {
  @override
  _QuizChoiceState createState() => _QuizChoiceState();
}

class _QuizChoiceState extends State<QuizChoice> {
  Text title(String s) {
    return Text(
      s,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontFamily: 'Sans',
        color: Colors.blueGrey[700],
      ),
    );
  }

  Text sub_title(String s) {
    return Text(
      s,
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        fontFamily: 'Muli',
        color: Colors.grey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          child: ListTile(
            leading: Image.asset('./assets/icons/angular.png'),
            title: title('Angular Basic\'s'),
            subtitle: sub_title('This Quiz Contains 13 Problems.'),
            isThreeLine: true,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuizPage(),
                ),
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: Image.asset('./assets/icons/cpp_logo.png'),
            title: title('C++ Basic\'s'),
            subtitle: sub_title('This Quiz Contains 13 Problems.'),
            isThreeLine: true,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuizPage(),
                ),
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: Image.asset('./assets/icons/c_logo.png'),
            title: title('C Basic\'s'),
            subtitle: sub_title('This Quiz Contains 13 Problems.'),
            isThreeLine: true,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuizPage(),
                ),
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: Image.asset('./assets/icons/c_sharp.jpg'),
            title: title('C# Basic\'s'),
            subtitle: sub_title('This Quiz Contains 13 Problems.'),
            isThreeLine: true,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuizPage(),
                ),
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: Image.asset('./assets/icons/css.png'),
            title: title('CSS Basic\'s'),
            subtitle: sub_title('This Quiz Contains 13 Problems.'),
            isThreeLine: true,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuizPage(),
                ),
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: Image.asset('./assets/icons/dart.jpg'),
            title: title('Dart Basic\'s'),
            subtitle: sub_title('This Quiz Contains 13 Problems.'),
            isThreeLine: true,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuizPage(),
                ),
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: Image.asset('./assets/icons/html.png'),
            title: title('Html 5 Basic\'s'),
            subtitle: sub_title('This Quiz Contains 13 Problems.'),
            isThreeLine: true,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuizPage(),
                ),
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: Image.asset('./assets/icons/java.png'),
            title: title('Core Java Basic\'s'),
            subtitle: sub_title('This Quiz Contains 13 Problems.'),
            isThreeLine: true,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuizPage(),
                ),
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: Image.asset('./assets/icons/js.jpg'),
            title: title('JavaScript Basic\'s'),
            subtitle: sub_title('This Quiz Contains 13 Problems.'),
            isThreeLine: true,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuizPage(),
                ),
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: Image.asset('./assets/icons/php.png'),
            title: title('Php Basic\'s'),
            subtitle: sub_title('This Quiz Contains 13 Problems.'),
            isThreeLine: true,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuizPage(),
                ),
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: Image.asset('./assets/icons/python.png'),
            title: title('Python Basic\'s'),
            subtitle: sub_title('This Quiz Contains 13 Problems.'),
            isThreeLine: true,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuizPage(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
