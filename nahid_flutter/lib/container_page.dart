import 'package:flutter/material.dart';

class container_page extends StatelessWidget {
  const container_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF171717),

      appBar: AppBar(
        title: const Text("Cinema Screen"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Movie screen container
          Container(
            height: 180,
            width: 280,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,

            decoration: BoxDecoration(
              color: const Color(0xFF292929),
              border: Border.all(width: 4, color: Colors.white),
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [
                BoxShadow(color: Colors.red, blurRadius: 12, spreadRadius: 2),
              ],
            ),

            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.live_tv, size: 50, color: Colors.redAccent),
                SizedBox(height: 10),
                Text(
                  "NOW SHOWING",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          // Movie information card
          SizedBox(
            height: 150,
            width: 280,
            child: Card(
              color: const Color(0xFF3A2020),
              elevation: 10,
              shadowColor: Colors.redAccent,
              margin: const EdgeInsets.all(10),

              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.movie_filter, size: 35, color: Colors.amber),
                  SizedBox(height: 10),
                  Text(
                    "Your Movie Night",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Sit back and enjoy!",
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
