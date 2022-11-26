import 'package:flutter/material.dart';

class RowCart extends StatelessWidget {
  final String image;
  final String text;

  const RowCart({
    required this.image,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 44,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            image.toString(),
          ),
          Text(
            text.toString(),
          ),
        ],
      ),
    );
  }
}
