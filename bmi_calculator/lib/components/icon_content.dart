import 'package:flutter/material.dart';
import '../constants.dart';

class iconContent extends StatelessWidget {
  iconContent({required this.icon ,required this.title, this.iconSize = kCardIconSize});
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
        Text(title, style: kLabelTextStyle,),


      ],
    );
  }
}