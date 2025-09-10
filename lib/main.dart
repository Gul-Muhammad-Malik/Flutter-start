// import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Launch Pad',
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Launch Pad",
              style: GoogleFonts.orbitron(color: Colors.white),
            ),
            backgroundColor: Colors.black,
          ),
          body: Center(
            child: Wrap(
              spacing: 6,
              runSpacing: 6,
              children: [
                Pad(Color(0xffADCBFC), Color(0xff067CCB), '1.mp3'),
                Pad(Color(0xffff2525), Color(0xffc40050), '2.mp3'),
                Pad(Color(0xffADCBFC), Color(0xff067CCB), '3.mp3'),
                Pad(Color(0xffE247FC), Color(0xffA23AB7), '4.mp3'),
                Pad(Color(0xffADCBFC), Color(0xff067CCB), '5.mp3'),
                Pad(Color(0xffff2525), Color(0xffc40050), '6.mp3'),
                Pad(Color(0xffADCBFC), Color(0xff067CCB), '7.mp3'),
                Pad(Color(0xffE247FC), Color(0xffA23AB7), '8.mp3'),
                Pad(Color(0xffADCBFC), Color(0xff067CCB), '9.mp3'),
                Pad(Color(0xffff2525), Color(0xffc40050), '10.mp3'),
                Pad(Color(0xffADCBFC), Color(0xff067CCB), '11.mp3'),
                Pad(Color(0xffE247FC), Color(0xffA23AB7), '12.mp3'),
                Pad(Color(0xffADCBFC), Color(0xff067CCB), '13.mp3'),
                Pad(Color(0xffff2525), Color(0xffc40050), '14.mp3'),
                Pad(Color(0xffADCBFC), Color(0xff067CCB), '15.mp3'),
                Pad(Color(0xffE247FC), Color(0xffA23AB7), '16.mp3'),
                Pad(Color(0xffADCBFC), Color(0xff067CCB), '17.mp3'),
                Pad(Color(0xffff2525), Color(0xffc40050), '18.mp3'),
                Pad(Color(0xffADCBFC), Color(0xff067CCB), '19.mp3'),
                Pad(Color(0xffE247FC), Color(0xffA23AB7), '20.wav'),
                Pad(Color(0xffADCBFC), Color(0xff067CCB), '21.mp3'),
                Pad(Color(0xffff2525), Color(0xffc40050), '22.wav'),
                Pad(Color(0xffADCBFC), Color(0xff067CCB), '23.wav'),
                Pad(Color(0xffE247FC), Color(0xffA23AB7), '24.wav'),
                Pad(Color(0xffADCBFC), Color(0xff067CCB), '25.wav'),
                Pad(Color(0xffff2525), Color(0xffc40050), '26.wav'),
                Pad(Color(0xffADCBFC), Color(0xff067CCB), '27.wav'),
                Pad(Color(0xffE247FC), Color(0xffA23AB7), '28.wav'),
              ],
            ),
          ),
          backgroundColor: Colors.black,
        ),
      ),
    );
    // TODO: implement build
  }
}

class Pad extends StatefulWidget {
  final colorCenter;
  final colorOutline;
  final note;
  const Pad(this.colorCenter, this.colorOutline, this.note, {super.key});

  @override
  _PadState createState() => _PadState();
}

class _PadState extends State<Pad> {
  late Color _colorCenter;
  late Color _colorOutline;
  final player = AudioPlayer();

  @override
  void initState() {
    _colorCenter = widget.colorCenter;
    _colorOutline = widget.colorOutline;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () async {
        setState(() {
          _colorCenter = Colors.white;
          _colorOutline = Colors.white;
          player.play(AssetSource(widget.note));
        });

        await Future.delayed(Duration(milliseconds: 500));

        setState(() {
          _colorCenter = widget.colorCenter;
          _colorOutline = widget.colorOutline;
        });
      },

      child: Container(
        height: height / 8.2,
        width: width / 4.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6.0)),
          gradient: RadialGradient(
            colors: [_colorCenter, _colorOutline],
            radius: 0.5,
          ),
          boxShadow: [BoxShadow(color: Colors.pink, blurRadius: 5)],
        ),
      ),
    );
  }
}
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   _myAppState createState() => _myAppState();
// }

// class _myAppState extends State<MyApp> {
//   //   int count = 0;
//   //   Color brown = Colors.brown;
//   //   Color black = Colors.black;
//   //   Color temp = Colors.white;
//   List<Color> colors = [
//     Colors.brown,
//     Colors.black,
//     Colors.white,
//     Colors.red,
//     Colors.green,
//     Colors.blue,
//     Colors.yellow,
//     Colors.purple,
//     Colors.orange,
//     Colors.pink,
//   ];
//   String kick = 'Kick.wav';
//   final player = AudioPlayer();
//   int appbar = 0; // Index for the app bar color
//   int background = 0; // Index for the background color
//   Random random = Random();
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: colors[background],
//         appBar: AppBar(
//           backgroundColor: colors[appbar],
//           centerTitle: true,
//           //   title: Text('$count', style: TextStyle(color: Colors.white)),
//         ),
//         body: MaterialButton(
//           onPressed: () {
//             setState(() {
//               player.play(AssetSource(kick));
//               // Change the app bar color randomly
//               appbar = random.nextInt(colors.length);
//               // Change the background color randomly
//               background = random.nextInt(colors.length);
//             });
//           },
//           child: Image.asset('images/myDashatar.png'),
//         ),
//       ),
//     );
//   }
// }
