import 'package:flutter/material.dart';

class CostumStarIcon extends StatelessWidget {
  Color color;
  CostumStarIcon({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: color,
    );
  }
}
