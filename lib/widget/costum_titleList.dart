import 'package:flutter/material.dart';

class TitleBook extends StatelessWidget {
  const TitleBook({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30),
      child: Text(
        'Book List',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 24,
        ),
      ),
    );
  }
}
