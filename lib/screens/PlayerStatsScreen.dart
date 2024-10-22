import 'dart:ui';
import 'package:flutter/material.dart';

class PlayerStatsScreen extends StatelessWidget {
  const PlayerStatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Same background color
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Player Stats'),
        backgroundColor: Colors.transparent, // Transparent app bar
        elevation: 0,
        // systemOverlayStyle: const SystemUiOverlayStyle(
        //   statusBarBrightness: Brightness.dark,
        // ),
      ),
      body: Stack(
        children: [
          // Background circles and blur effect
          Align(
            alignment: AlignmentDirectional(3, -0.3),
            child: Container(
              height: 300,
              width: 300,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.deepPurple,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-3, -0.3),
            child: Container(
              height: 300,
              width: 300,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.deepPurple,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0, -1.2),
            child: Container(
              height: 300,
              width: 300,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
            child: Container(
              decoration: const BoxDecoration(color: Colors.transparent),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                    height: 20), // Space between the app bar and content

                // Title and Player Stats Section
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color:
                          Colors.grey[900], // Dark background for the container
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Stats Title
                        const Center(
                          child: Text(
                            'Season Stats',
                            style: TextStyle(
                              fontSize: 24, // Font size
                              color: Colors.orange, // Orange text color
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                            height: 20), // Space between title and stats

                        // Display Player Stats
                        buildStatItem('Matches Played', '20'),
                        buildStatItem('Tries scored', '15'),
                        buildStatItem('Passes made', '17'),
                        buildStatItem('Points scored', '8'),
                        buildStatItem('Yellow Cards', '2'),
                        buildStatItem('Red Cards', '0'),
                        buildStatItem('Takles Made', '20'),
                        buildStatItem('Takles missed', '7'),
                        buildStatItem('Penalties conceded', '3'),
                        buildStatItem('Knock ons', '2'),

                        const SizedBox(height: 32),

                        // const Spacer(), // Spacer to push the edit button to the bottom

                        // Edit Stats Button
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              // Navigate to edit stats screen or logic
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(
                                  0xFFFFA500), // Orange button color
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: const Text(
                              'Edit Stats',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build each stat item
  Widget buildStatItem(String statName, String statValue) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            statName,
            style: const TextStyle(
              color: Colors.orange, // Orange color for stat names
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text(
            statValue,
            style: const TextStyle(
              color: Colors.white, // White color for stat values
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
