import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

   Expanded buildKey({Color color, int soundKey}) {
     return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(soundKey);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundKey: 1),
              buildKey(color: Colors.orange, soundKey: 2),
              buildKey(color: Colors.yellow, soundKey: 3),
              buildKey(color: Colors.green, soundKey: 4),
              buildKey(color: Colors.teal, soundKey: 5),
              buildKey(color: Colors.blue, soundKey: 6),
              buildKey(color: Colors.purple, soundKey: 7),
            ],
          ),
        ),
      ),
    );
  }
}