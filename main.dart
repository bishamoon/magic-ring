import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 140, 216, 199),
        appBar: AppBar(
            title: Text('Ask me anything'),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 140, 216, 199)),
        body: MagicRingPage(),
      ),
    ),
  );
}

class MagicRingPage extends StatefulWidget {
  MagicRingPage({Key? key}) : super(key: key);

  @override
  State<MagicRingPage> createState() => _MagicRingPageState();
}

class _MagicRingPageState extends State<MagicRingPage> {
  int ball = 1;

  void changeball() {
    setState(() {
      ball = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
          child: FlatButton(
        child: Image.asset('assets/images/ball$ball.png'),
        onPressed: changeball,
      )),
    );
  }
}
