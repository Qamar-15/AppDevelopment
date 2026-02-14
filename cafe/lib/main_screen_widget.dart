import 'package:flutter/material.dart';
import 'coffee_list.dart';

class MainScreenWidget extends StatelessWidget {
  const MainScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top bar
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            const Color.fromARGB(255, 63, 61, 61),
                            Colors.black,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.menu, color: Colors.white),
                      ),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            const Color.fromARGB(255, 63, 61, 61),
                            Colors.black,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.person, color: Colors.white),
                      ),
                    ),
                  ],
                ),

                // Title
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    "Find the best\nCoffee for you.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // Search bar
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.1),
                  ),
                  margin: EdgeInsets.only(top: 25),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Find Your Coffee ...",
                      hintStyle: TextStyle(
                        color: Colors.white60.withOpacity(0.2),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 10),
                        child: Icon(Icons.search, color: Colors.white54),
                      ),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),

                const SizedBox(height: 35),

                // Coffee list (categories + product cards)
                const CoffeeListWidget(),
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: Container(
        color: const Color.fromARGB(137, 19, 19, 19),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_bag, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
