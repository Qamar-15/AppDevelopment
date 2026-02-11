import 'package:flutter/material.dart';
import 'login_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login Page', style: TextStyle(color: Colors.white)),
          backgroundColor: const Color.fromARGB(255, 92, 94, 95),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: LoginScreen(),
        ),
      ),
    ),
  );
}
