import 'package:flutter/material.dart';

class bottomNavigationBar extends StatelessWidget {
   bottomNavigationBar({super.key});

  final List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
  ];

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 410,
      height: 20,
      color: Colors.black,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "  Help  |",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            "  Contact us |",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            "  About  |",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            "  More Information  |",
            style: TextStyle(
              color: Colors.white,
            ),
          ),

        ],
      ),
    );
  }
}
