import 'package:flutter/material.dart';

const cardIconColor = Color(0xFF8D8E98);
const cardIconSize = 80.0;

class iconContent extends StatelessWidget {
  iconContent({required this.icon ,required this.title, this.iconSize = cardIconSize});
  final IconData ? icon;
  final String title;
  final double iconSize;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(title, style: const TextStyle(fontSize: 18.0, color: cardIconColor),),


      ],
    );
  }
}