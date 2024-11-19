import 'package:flutter/material.dart';
//import 'package:audioplayers/audioplayers.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  //final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: TextButton(onPressed: ()  async {
              //await player.setSource(AssetSource('assets/note1.wav'));
            },
                child: Text('Click Me'),
            ),
          ),
        ),
      ),
    );
  }
}
