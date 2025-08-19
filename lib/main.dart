import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Text> a = [
      Text('Dash 1'),
      Text('Dash 2'),
      Text('Dash 3'),
      Text('Dash 4'),
    ];
    // final stars = Row(
    //   mainAxisSize: MainAxisSize.min,
    //   children: [
    //     Icon(Icons.star, color: Colors.green[500]),
    //     Icon(Icons.star, color: Colors.green[500]),
    //     Icon(Icons.star, color: Colors.green[500]),
    //     const Icon(Icons.star, color: Colors.black),
    //     const Icon(Icons.star, color: Colors.black),
    //   ],
    // );

    // final ratings = Container(
    //   padding: const EdgeInsets.all(20),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //     children: [
    //       stars,
    //       const Text(
    //         '170 Reviews',
    //         style: TextStyle(
    //           color: Colors.black,
    //           fontWeight: FontWeight.w800,
    //           fontFamily: 'Roboto',
    //           letterSpacing: 0.5,
    //           fontSize: 20,
    //         ),
    //       ),
    //     ],
    //   ),
    // );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[300],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          centerTitle: true,
          // title: Text('My Dashatar App', style: TextStyle(color: Colors.white)),
          title: a[0],
        ),
        // body: Center(child: ratings),
        body: Container(
          width: 100.0,
          child: ListView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(20.0),
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.yellow[200],
                child: Image.asset('images/myDashatar.png'),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.grey[200],
                child: Image.asset('images/myDashatar.png'),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.brown[200],
                child: Image.asset('images/myDashatar.png'),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.red[200],
                child: Image.asset('images/myDashatar.png'),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.yellow[200],
                child: Image.asset('images/myDashatar.png'),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.grey[200],
                child: Image.asset('images/myDashatar.png'),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.brown[200],
                child: Image.asset('images/myDashatar.png'),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.red[200],
                child: Image.asset('images/myDashatar.png'),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.yellow[200],
                child: Image.asset('images/myDashatar.png'),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.grey[200],
                child: Image.asset('images/myDashatar.png'),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.brown[200],
                child: Image.asset('images/myDashatar.png'),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.red[200],
                child: Image.asset('images/myDashatar.png'),
              ),
            ],
          ),
        ),
        // body: Center(
        //   child: Image.network(
        //     'https://toppng.com/uploads/preview/coffee-cup-11549812808tuhy33gy6u.png',
        //   ),
        // ),
      ),
    );
  }
}
