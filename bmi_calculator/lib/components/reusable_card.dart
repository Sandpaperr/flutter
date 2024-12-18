import 'package:flutter/material.dart';


class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, this.cardChild, this.onPress});
  final Color colour;
  final Widget ? cardChild;
  final GestureTapCallback ? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        constraints: const BoxConstraints(
          maxHeight: double.infinity,
          maxWidth: double.infinity,
        ),
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
        child: Center(child: cardChild,),
      ),
    );
  }
}