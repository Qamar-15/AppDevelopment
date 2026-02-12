import 'package:flutter/material.dart';

class MainScreenWidget extends StatefulWidget {
  @override
  _MainScreenWidgetState createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.person)),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                "Welcome to Cafe. Find the best Cofee for you",
                style: TextStyle(color: Colors.white, fontSize: 34),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
