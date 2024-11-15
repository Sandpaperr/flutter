import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child:Column(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage("images/file.png"),
                radius: 50.0,
                backgroundColor: Colors.red,
              ),
              const Text(
                "Leandro Russo",
                style: TextStyle(
                  fontFamily: "LibreBaskerville",
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Software Engineer",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontFamily: "SourceCodePro",
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                padding: EdgeInsets.all(20.0),
                child: const Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    SizedBox(width: 10.0,),
                    Text("+44 123 456 678",
                    style: TextStyle(
                      fontFamily: "SourceCodePro",
                      color: Colors.teal,
                      fontSize: 20.0,
                    ),)

                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                padding: EdgeInsets.all(20.0),
                child: const Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    SizedBox(width: 10.0,),
                    Text("leo123@gmail.com",
                      style: TextStyle(
                        fontFamily: "SourceCodePro",
                        color: Colors.teal,
                        fontSize: 20.0,
                      ),)

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
