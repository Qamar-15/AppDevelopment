import 'package:flutter/material.dart';
import 'guest_list.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Weeding Card'),
          backgroundColor: const Color.fromARGB(255, 212, 29, 29),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/p1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Text(
                "You are invited to the wedding of",
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 40), // Blank space after invitation text
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Aisha & Usman",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 12, 181, 233),
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "12/12/2026",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 236, 234, 234),
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Lahore",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 240, 237, 237),
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ListViewWidget(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    ),
  );
}
