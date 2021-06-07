// @dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void playSound(num) {
    var player = AudioCache();
    player.play('note$num.wav');
  }

  Widget build(BuildContext context) {
    Expanded keyBuilder({Color color, int num}) {
      return Expanded(
        child: TextButton(
          style: ElevatedButton.styleFrom(
            primary: color,
            padding: EdgeInsets.symmetric(vertical: 20),
            textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            playSound(num);
          },
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            keyBuilder(color: Colors.green, num: 1),
            keyBuilder(color: Colors.amber, num: 2),
            keyBuilder(color: Colors.pink, num: 3),
            keyBuilder(color: Colors.brown, num: 4),
            keyBuilder(color: Colors.blueAccent, num: 5),
            keyBuilder(color: Colors.deepPurpleAccent, num: 6),
            keyBuilder(color: Colors.teal, num: 7),
          ],
        ),
      ),
    );
  }
}
