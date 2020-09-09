import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  void playSound(int noteNumber) {
    player.play('note$noteNumber.wav');
  }

  Widget buildKey({Color keyColor, int keySound}) {
    return Expanded(
      child: FlatButton(
        color: keyColor,
        onPressed: () {
          playSound(keySound);
        },
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
