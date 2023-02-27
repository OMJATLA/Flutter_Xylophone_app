import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // void playSound(int songno) {
  //   //function
  //   final player = AudioPlayer();
  //   player.play(AssetSource('note$songno.wav'));
  // }

  Widget allcolorbuttons({Color color, int songno1}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          // playSound(songno1);
          final player = AudioPlayer();
          player.play(AssetSource('note$songno1.wav'));
        },
        style: TextButton.styleFrom(backgroundColor: color),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          // ignore: sdk_version_set_literal

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              allcolorbuttons(color: Colors.red, songno1: 1),
              allcolorbuttons(color: Colors.orange, songno1: 2),
              allcolorbuttons(color: Colors.yellow, songno1: 3),
              allcolorbuttons(color: Colors.green, songno1: 4),
              allcolorbuttons(
                  color: Color.fromARGB(255, 0, 75, 136), songno1: 5),
              allcolorbuttons(
                  color: Color.fromARGB(255, 99, 2, 116), songno1: 6),
              allcolorbuttons(color: Colors.purple, songno1: 7),
            ],
          ),
        ),
      ),
    );
  }
}
