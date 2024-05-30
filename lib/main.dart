import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.mp3'));
  }

  Widget buildKeyButton({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: const Text(''),
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
            children: <Widget>[
              buildKeyButton(color: Colors.red, soundNumber: 1),
              buildKeyButton(color: Colors.orange, soundNumber: 2),
              buildKeyButton(color: Colors.yellow, soundNumber: 3),
              buildKeyButton(color: Colors.green, soundNumber: 4),
              buildKeyButton(color: Colors.teal, soundNumber: 5),
              buildKeyButton(color: Colors.blue, soundNumber: 6),
              buildKeyButton(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
