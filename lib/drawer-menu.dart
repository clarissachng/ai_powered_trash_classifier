import 'package:flutter/material.dart';
import 'main.dart'; // Import main.dart for the Home button
import 'settings-page.dart'; // Import the settings page
import 'nearest.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          // Menu Title with Plain Background
          const SizedBox(
            height: 100, // Height of the title section
            child: Center(
              child: Text(
                'Menu',
                style: TextStyle(
                  fontSize: 28, // Larger font size
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // Menu Items
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                // Home Button (Black Background)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8, // Add some vertical padding
                    horizontal: 16,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF262626), // Black background
                      borderRadius: BorderRadius.circular(8), // Rounded corners
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 16, // Increased vertical padding
                        horizontal: 16,
                      ),
                      title: const Center(
                        child: Text(
                          'Home',
                          style: TextStyle(
                            fontSize: 24, // Increased font size
                            fontWeight: FontWeight.bold,
                            color: Colors.white, // White text
                          ),
                        ),
                      ),
                      onTap: () {
                        // Handle "Home" button tap
                        Navigator.pop(context); // Close the drawer
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const MyApp()),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 20), // Space between items
                // Scan My Waste Button (Outlined)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8, // Add some vertical padding
                    horizontal: 16,
                  ),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: Colors.black, // Outline color
                        width: 2, // Outline thickness
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // Rounded corners
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 16, // Increased vertical padding
                        horizontal: 16,
                      ),
                    ),
                    onPressed: () {
                      // Handle "Scan my waste" button tap
                      Navigator.pop(context); // Close the drawer
                      print('Scan my waste tapped');
                    },
                    child: const Center(
                      child: Text(
                        'Scan my waste',
                        style: TextStyle(
                          fontSize: 24, // Increased font size
                          fontWeight: FontWeight.bold,
                          color: Colors.black, // Black text
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20), // Space between items
                // Waste Log Button (Outlined)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8, // Add some vertical padding
                    horizontal: 16,
                  ),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: Colors.black, // Outline color
                        width: 2, // Outline thickness
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // Rounded corners
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 16, // Increased vertical padding
                        horizontal: 16,
                      ),
                    ),
                    onPressed: () {
                      // Handle "Waste Log" button tap
                      Navigator.pop(context); // Close the drawer
                      print('Waste Log tapped');
                    },
                    child: const Center(
                      child: Text(
                        'Waste Log',
                        style: TextStyle(
                          fontSize: 24, // Increased font size
                          fontWeight: FontWeight.bold,
                          color: Colors.black, // Black text
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20), // Space between items
                // Tips and Fun Facts Button (Outlined)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8, // Add some vertical padding
                    horizontal: 16,
                  ),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: Colors.black, // Outline color
                        width: 2, // Outline thickness
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // Rounded corners
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 16, // Increased vertical padding
                        horizontal: 16,
                      ),
                    ),
                    onPressed: () {
                      // Handle "Tips and Fun Facts" button tap
                      Navigator.pop(context); // Close the drawer
                      print('Tips and Fun Facts tapped');
                    },
                    child: const Center(
                      child: Text(
                        'Tips and Fun Facts',
                        style: TextStyle(
                          fontSize: 24, // Increased font size
                          fontWeight: FontWeight.bold,
                          color: Colors.black, // Black text
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20), // Space below the last item
              ],
            ),
          ),
          // Settings Icon at the Bottom Left
          Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.all(16.0),
            child: IconButton(
              icon: Image.asset(
                'assets/icons-added/settings-icon.png', // Path to your custom icon
                width: 24, // Adjust the size as needed
                height: 24,
              ),
              onPressed: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
