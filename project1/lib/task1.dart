import 'package:flutter/material.dart';

class t1 extends StatelessWidget {
  const t1({super.key, required this.text2});

  final String text2;

  @override
  Widget build(BuildContext context) {
    return Text(
      text2,
      style: TextStyle(fontSize: 24, color: const Color.fromARGB(255, 5, 5, 5)),
    );
  }
}
