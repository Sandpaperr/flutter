import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blue,
          body: Container(
            height: 100,
            width: 100,
            margin: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.only(top: 10.0),
            color: Colors.white,
            child: const Text("Hello"),
          ),
        ),
      ),
    );
  }
}
