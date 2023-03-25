import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic Ball Challenge',
      home: const BallPage(),
    );
  }
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: const Text('                         Ask Me Anything'),
          backgroundColor:Color.fromARGB(255, 3, 49, 72),
        ),
        
        body:Container(
          color: Colors.blue,
          child: const Ball(),
        )
      ),
    );
    
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  // initiate ballNumber to 1
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
          });

          // print ball's number on console
          print(ballNumber);
        },
        child: Image.asset(
          'assets/images/ball$ballNumber.png',
          width: 300,
          height: 300,
        ),
      ),
    );
  }
}
