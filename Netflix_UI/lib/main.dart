import 'package:flutter/material.dart';
import 'pagination.dart';
void main() => runApp(netflixUI());

class netflixUI extends StatefulWidget {
  const netflixUI({super.key});

  @override
  State<netflixUI> createState() => _netflixUIState();
}

class _netflixUIState extends State<netflixUI> {
  PaginationScrollController paginationScrollController =
  PaginationScrollController();
  List<Widget> items = [];
  int lastPage = 3; // Mock total number of pages
  int currentPage = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Nexflics"),
        ),
        body: SizedBox(
          height: 500.0,
          child: ListView(
            controller: ScrollController(),
            physics: BouncingScrollPhysics(),
            children: [
              ItemList(backgroundColor: Colors.green, height: 300.0),
              ItemList(backgroundColor: Colors.blue, height: 300.0),
              ItemList(backgroundColor: Colors.red, height: 300.0),
              ItemList(backgroundColor: Colors.orange, height: 300.0),
              ItemList(backgroundColor: Colors.yellow, height: 300.0),
              ItemList(backgroundColor: Colors.purple, height: 300.0),
              ItemList(backgroundColor: Colors.lightGreenAccent, height: 300.0),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  const ItemList({super.key, required this.backgroundColor, required this.height});
  final Color backgroundColor;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(height: height, color: backgroundColor,);
  }
}
