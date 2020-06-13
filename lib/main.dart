import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int a) {
    final player = AudioCache();
    player.play('note$a.wav');
  }

  Expanded buildkey({int c, Color b}) {
    return Expanded(
        child: FlatButton(
      color: b,
      onPressed: () {
        playsound(c);
      },
      child: Text(' '),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildkey(c: 1, b: Colors.red),
            buildkey(c: 2, b: Colors.orange),
            buildkey(c: 3, b: Colors.yellow),
            buildkey(c: 4, b: Colors.lightGreen),
            buildkey(c: 5, b: Colors.lightBlue),
            buildkey(c: 6, b: Colors.blueAccent),
            buildkey(c: 7, b: Colors.indigo),
          ],
        )),
      ),
    );
  }
}
