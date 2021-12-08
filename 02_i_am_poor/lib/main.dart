// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('I am poor'),
          backgroundColor: Colors.indigo[300],
        ),
        body: const Center(
          child: const Image(
            image: AssetImage('assets/images/coal.jpg'),
          ),
        ),
      ),
    );
  }
}
