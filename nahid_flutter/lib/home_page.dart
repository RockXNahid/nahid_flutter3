import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F0E8),

      appBar: AppBar(
        title: const Text(
          "CINEWORLD",
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2),
        ),
        backgroundColor: const Color(0xFF17243A),
        foregroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.account_circle)),
        ],
      ),

      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF17243A)),
              accountName: Text("Movie Explorer"),
              accountEmail: Text("Welcome to CineWorld"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orangeAccent,
                child: Icon(Icons.theaters, color: Color(0xFF17243A), size: 35),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.local_movies),
              title: const Text("Movies"),
              onTap: () {},
            ),

            ListTile(
              leading: const Icon(Icons.event_seat),
              title: const Text("My Tickets"),
              onTap: () {},
            ),

            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text("About Us"),
              onTap: () {},
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orangeAccent,
        foregroundColor: const Color(0xFF17243A),
        tooltip: "Book a ticket",
        child: const Icon(Icons.confirmation_number),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Welcome section
              const Text(
                "YOUR NEXT",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF667085),
                  letterSpacing: 3,
                ),
              ),

              const Text(
                "MOVIE ESCAPE.",
                style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF17243A),
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                "Find a story worth watching.",
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),

              const SizedBox(height: 22),

              // Cinema information container
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFF17243A),
                  borderRadius: BorderRadius.circular(12),
                ),

                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.movie_creation_outlined,
                      color: Colors.orangeAccent,
                      size: 40,
                    ),

                    SizedBox(height: 12),

                    Text(
                      "THE BIG SCREEN",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(height: 8),

                    Text(
                      "Big stories. Great moments. "
                      "Unforgettable nights.",
                      style: TextStyle(color: Colors.white70, fontSize: 15),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              const Text(
                "PICK YOUR MOOD",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF17243A),
                ),
              ),

              const SizedBox(height: 12),

              // Movie categories
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFD9A0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Column(
                      children: [
                        Icon(Icons.flash_on, size: 28),
                        SizedBox(height: 5),
                        Text("Action"),
                      ],
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xFFD8E4F5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Column(
                      children: [
                        Icon(Icons.favorite, size: 28),
                        SizedBox(height: 5),
                        Text("Romance"),
                      ],
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xFFD6E9D8),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Column(
                      children: [
                        Icon(Icons.mood, size: 28),
                        SizedBox(height: 5),
                        Text("Comedy"),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              const Text(
                "FEATURED PICKS",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF17243A),
                ),
              ),

              const SizedBox(height: 12),

              // First movie card
              Card(
                color: Colors.white,
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(12),

                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 80,
                        decoration: BoxDecoration(
                          color: const Color(0xFF344B70),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(
                          Icons.rocket_launch,
                          color: Colors.orangeAccent,
                          size: 40,
                        ),
                      ),

                      const SizedBox(width: 14),

                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Beyond the Stars",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF17243A),
                              ),
                            ),

                            SizedBox(height: 6),

                            Text(
                              "Adventure • Sci-Fi",
                              style: TextStyle(color: Colors.black54),
                            ),

                            SizedBox(height: 8),

                            Text(
                              "A journey into the unknown.",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Second movie card
              Card(
                color: Colors.white,
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(12),

                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 80,
                        decoration: BoxDecoration(
                          color: const Color(0xFF9C5265),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),

                      const SizedBox(width: 14),

                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Letters to Tomorrow",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF17243A),
                              ),
                            ),

                            SizedBox(height: 6),

                            Text(
                              "Romance • Drama",
                              style: TextStyle(color: Colors.black54),
                            ),

                            SizedBox(height: 8),

                            Text(
                              "A story of hope and friendship.",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 18),

              // Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Your movie was selected!"),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF17243A),
                      foregroundColor: Colors.white,
                    ),
                    child: const Text("Explore"),
                  ),

                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: const Color(0xFF17243A),
                    ),
                    child: const Text("View All"),
                  ),

                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: const Color(0xFF17243A),
                      side: const BorderSide(color: Color(0xFF17243A)),
                    ),
                    child: const Text("Save"),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              const Center(
                child: Text(
                  "YOUR STORY STARTS HERE",
                  style: TextStyle(
                    color: Color(0xFF667085),
                    letterSpacing: 2,
                    fontSize: 12,
                  ),
                ),
              ),

              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
