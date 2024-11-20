import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const cardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: cardColor,),
                ),
                Expanded(
                  child: ReusableCard(colour: cardColor),
                ),

              ],
            ),
          ),
          Expanded(
            flex: 1,
            child:  ReusableCard(colour: cardColor,),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: cardColor,),
                ),
                Expanded(
                  child: ReusableCard(colour: cardColor,),
                ),

              ],
            ),
          ),
          Container(color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0) ,
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      )
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour});
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}