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
  int count = 0;
  Color brown = Colors.brown;
  Color black = Colors.black;
  Color temp = Colors.white;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: brown,
        appBar: AppBar(
          backgroundColor: black,
          centerTitle: true,
          title: Text('$count', style: TextStyle(color: Colors.white)),
        ),
        body: MaterialButton(
          onPressed: () {
            setState(() {
              temp = brown;
              brown = black;
              black = temp;
              count++;
            });
          },
          child: Image.asset('images/myDashatar.png'),
        ),
      ),
    );
  }
}
