import 'package:flutter/material.dart';

class CostumAppbar extends StatelessWidget {
  const CostumAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28, top: 43, right: 28, bottom: 59),
      child: Row(
        children: [
          Image.asset('asset/user.png'),
          const SizedBox(
            width: 12,
          ),
          const Expanded(
            child: Text(
              'Hi,Ali!',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          Image.asset(
            'asset/dots.png',
            width: 20,
            height: 20,
          ),
        ],
      ),
    );
  }
}
