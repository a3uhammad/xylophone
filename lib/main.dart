import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNum) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNum.wav'));
  }

  Expanded buildKey({required int noteNum, required Color color}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          playSound(noteNum);
        },
        child: Container(),
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
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(noteNum: 1, color: Colors.red),
              buildKey(noteNum: 2, color: Colors.orange),
              buildKey(noteNum: 3, color: Colors.yellow),
              buildKey(noteNum: 4, color: Colors.green),
              buildKey(noteNum: 5, color: Colors.cyan),
              buildKey(noteNum: 6, color: Colors.blue),
              buildKey(noteNum: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
