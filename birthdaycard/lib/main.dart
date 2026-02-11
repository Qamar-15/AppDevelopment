import 'package:flutter/material.dart';
import 'guest_list.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Birthday Invitation'),
          backgroundColor: const Color.fromARGB(255, 228, 115, 209),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/p1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You are Invited!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Join us to celebrate a special birthday!',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Text(
                'Date: July 15, 2024\nTime: 3:00 PM\nLocation: 123 Party Lane',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              Spacer(),
              ListViewWidget(),
            ],
          ),
        ),
      ),
    ),
  );
}
