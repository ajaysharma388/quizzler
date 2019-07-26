import 'package:flutter/material.dart';

class DeveloperProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue[900],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('assets/icons/Aj.jpg'),
              ),
              Text(
                'Ajay Sharma',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 250.0,
                child: Divider(
                  color: Colors.blue[100],
                ),
              ),
              Card(
                color: Colors.grey[100],
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Image.asset('assets/icons/git.png'),
                    title: Text(
                      'ajaysharma388',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontFamily: 'Pacifico',
                        fontWeight: FontWeight.bold,
                        //fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.blue[50],
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Image.asset('assets/icons/face.png'),
                    title: Text(
                      'iamajaysharma388',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.blue[900],
                        fontFamily: 'Pacifico',
                        fontWeight: FontWeight.bold,
                        //fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.pink[50],
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Image.asset('assets/icons/instagram.png'),
                    title: Text(
                      'aj.sharma388',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.red,
                        fontFamily: 'Pacifico',
                        fontWeight: FontWeight.bold,
                        //fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.green[50],
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Image.asset('assets/icons/hackerank.png'),
                    title: Text(
                      'ajaysharma388',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                        fontFamily: 'Pacifico',
                        fontWeight: FontWeight.bold,
                        //fontStyle: FontStyle.italic,
                      ),
                    ),
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
