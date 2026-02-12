import 'package:flutter/material.dart';
import 'main_screen_widget.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: MainScreenWidget()),
    ),
  );
}
