import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buildKey({Color color, int i}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(i);
        },
      ),
    );
  }

  void playSound(int i) {
    final player = AudioCache();
    player.play('note$i.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, i: 1),
                buildKey(color: Colors.orange, i: 2),
                buildKey(color: Colors.yellow, i: 3),
                buildKey(color: Colors.green, i: 4),
                buildKey(color: Colors.teal, i: 5),
                buildKey(color: Colors.blue, i: 6),
                buildKey(color: Colors.deepPurple, i: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
