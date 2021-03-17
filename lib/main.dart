import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dicee App',
      home: DiceeApp(),
    );
  }
}

class DiceeApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dicee App'),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftNumber = 1;
  int rightNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              child: Image.asset('assets/images/dice$leftNumber.png'),
              onPressed: () {
                setState(() {
                  leftNumber = Random().nextInt(7);
                  while(leftNumber == 0){
                    leftNumber = Random().nextInt(7);
                  }
                });
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('assets/images/dice$rightNumber.png'),
              onPressed: () {
                setState(() {
                  rightNumber = Random().nextInt(7);
                  while(rightNumber == 0){
                    rightNumber = Random().nextInt(7);
                  }
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

