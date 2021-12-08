import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue[300],
          appBar: AppBar(
            backgroundColor: Colors.indigo[600],
            title: const Text('Ask me anything'),
            centerTitle: true,
          ),
          body: Ball(),
        ),
      ),
    );

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballImage = 1;
  Random rng = Random();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: TextButton(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.deepPurple.shade800;
              }
              return Colors.black; // Defer to the widget's default.
            }),
          ),
          onPressed: () => {
            setState(() {
              ballImage = rng.nextInt(5) + 1;
            }),
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('images/ball$ballImage.png'),
          ),
        ),
      ),
    );
  }
}
