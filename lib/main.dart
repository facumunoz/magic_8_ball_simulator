import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      appBar: AppBar(
        title: Center(
          child: Text('Magic 8 ball'),
        ),
        backgroundColor: Colors.deepPurple.shade400,
      ),
      body: MagicBallPage(),
    ),
  ));
}

class MagicBallPage extends StatefulWidget {
  @override
  _MagicBallPageState createState() => _MagicBallPageState();
}

int ballNumber = 1;

class _MagicBallPageState extends State<MagicBallPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          onPressed: () {
            setState(() {
              ballNumber = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$ballNumber.png'),
        )
      ],
    );
  }
}
