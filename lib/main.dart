import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<MyApp> {
  //   int count = 0;
  //   Color brown = Colors.brown;
  //   Color black = Colors.black;
  //   Color temp = Colors.white;
  List<Color> colors = [
    Colors.brown,
    Colors.black,
    Colors.white,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.pink,
  ];
  String kick = 'Kick.wav';
  final player = AudioPlayer();
  int appbar = 0; // Index for the app bar color
  int background = 0; // Index for the background color
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: colors[background],
        appBar: AppBar(
          backgroundColor: colors[appbar],
          centerTitle: true,
          //   title: Text('$count', style: TextStyle(color: Colors.white)),
        ),
        body: MaterialButton(
          onPressed: () {
            setState(() {
              player.play(AssetSource(kick));
              // Change the app bar color randomly
              appbar = random.nextInt(colors.length);
              // Change the background color randomly
              background = random.nextInt(colors.length);
            });
          },
          child: Image.asset('images/myDashatar.png'),
        ),
      ),
    );
  }
}
