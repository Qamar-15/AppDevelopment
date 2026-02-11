import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  String username = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 350,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 143, 141, 141),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Welcome Back",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 40),
            TextField(
              onChanged: (text) {
                username = text;
              },
              decoration: InputDecoration(
                labelText: "Username",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 30),
            TextField(
              onChanged: (text) {
                password = text;
              },
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              onPressed: () {
                print("Username: $username");
                print("Password: $password");
              },
              child: Text("Login", style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
