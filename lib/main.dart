import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  void playSound(int noteNumber) {
    player.play('note$noteNumber.wav');
  }

  Widget buildKey({Color keyColor, int keySound}) {
    return Container(
      margin: EdgeInsets.fromLTRB(
          keySound.toDouble() * 8, 0, keySound.toDouble() * 8, 0),
      child: SizedBox(
        height: 90,
        child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          color: keyColor,
          onPressed: () {
            playSound(keySound);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 5.0,
              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 5.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildKey(keyColor: Colors.red, keySound: 1),
              buildKey(keyColor: Colors.orange, keySound: 2),
              buildKey(keyColor: Colors.yellow, keySound: 3),
              buildKey(keyColor: Colors.green, keySound: 4),
              buildKey(keyColor: Colors.teal, keySound: 5),
              buildKey(keyColor: Colors.blue, keySound: 6),
              buildKey(keyColor: Colors.purple, keySound: 7),
            ],
          ),
        ),
      ),
    );
  }
}
