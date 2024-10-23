import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Same background color
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Profile'),
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
                // SvgPicture.asset(
                //   'lib/assets/profile.svg',
                //   // svgPath,
                //   width: 70, // Adjusted icon size
                //   height: 70,
                //   // color: Colors.orange, // Set icon color to match the buttons
                // ),
                const SizedBox(height: 20), // Space between avatar and details

                // User Details Section
                Flexible(
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
                        // User Info Title
                        const Center(
                          child: Text(
                            'User Information',
                            style: TextStyle(
                              fontSize: 24, // Font size
                              color: Colors.white, // White text color
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: SvgPicture.asset(
                            'lib/assets/profile3.svg',
                            // svgPath,
                            width: 70, // Adjusted icon size
                            height: 70,
                            // color: Colors.orange, // Set icon color to match the buttons
                          ),
                        ), // Space between title and details
                        const SizedBox(height: 20),

                        // Name Section
                        buildProfileDetail(
                            title: 'Full Name', value: 'John Doe'),

                        const SizedBox(height: 10),

                        // Email Section
                        buildProfileDetail(
                            title: 'Email', value: 'johndoe@email.com'),

                        const SizedBox(height: 10),

                        // Phone Section
                        buildProfileDetail(
                            title: 'Phone', value: '+123 456 7890'),

                        const SizedBox(height: 10),

                        // Other sections can be added here
                        buildProfileDetail(title: 'Position', value: 'Forward'),
                        const SizedBox(height: 40),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/landing');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color(0xFFFFA500), // Gold color
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 60, vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: const Text(
                              'Edit profile',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
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

  // Helper method to build each profile detail section
  Widget buildProfileDetail({required String title, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.orange, // Orange color for section title
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white, // White color for section value
            fontSize: 16,
          ),
        ),
        const Divider(
          color: Colors.white54, // Divider color between sections
        ),
      ],
    );
  }
}
