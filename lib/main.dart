import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Messaoud Demo',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'AppBar from Messaoud',
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Row(
                children: const <Widget>[
                  Text(
                    'First Name',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Last Name',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Age',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Row(
                children: const <Widget>[
                  Text(
                    'Messaod',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Benkouider',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    '29',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
