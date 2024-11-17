import 'package:flutter/material.dart';
void main() => runApp(netflixUI());

class netflixUI extends StatefulWidget {
  const netflixUI({super.key});

  @override
  State<netflixUI> createState() => _netflixUIState();
}

class _netflixUIState extends State<netflixUI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Nexflics"),
        ),
        body: SizedBox(
          height: 1000.0,
          child: ListView(
            children: [
              Container(height: 300.0, color: Colors.green,),
              Container(height: 300.0, color: Colors.blue,),
              Container(height: 300.0, color: Colors.red,),
              Container(height: 300.0, color: Colors.purple,),
              Container(height: 300.0, color: Colors.yellow,),
              Container(height: 300.0, color: Colors.orange,),
              Container(height: 300.0, color: Colors.black,),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  const ItemList({super.key, required this.backgroundColor});
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
