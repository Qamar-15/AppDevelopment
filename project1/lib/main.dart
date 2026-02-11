import 'package:flutter/material.dart';
import 'package:project1/cb1.dart';
import 'package:project1/task1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            cb1(
              colors1: [
                const Color.fromARGB(255, 36, 7, 87),
                const Color.fromARGB(255, 1, 173, 253),
                const Color.fromARGB(255, 10, 57, 209),
              ],
            ),
            Center(child: t1(text2: 'Hello, Flutter!')),
          ],
        ),
      ),
    );
  }
}
