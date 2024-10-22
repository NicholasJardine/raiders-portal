// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class LandingScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         systemOverlayStyle: SystemUiOverlayStyle(
//           statusBarBrightness: Brightness.dark,
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Hero Section
//             Stack(
//               children: [
//                 // Background Circles
//                 Positioned(
//                   top: -50,
//                   left: -50,
//                   child: Container(
//                     height: 300,
//                     width: 300,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.deepPurple,
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   top: -50,
//                   right: -50,
//                   child: Container(
//                     height: 300,
//                     width: 300,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.deepPurple,
//                     ),
//                   ),
//                 ),
//                 // Blurred Background
//                 BackdropFilter(
//                   filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
//                   child: Container(
//                     height: MediaQuery.of(context).size.height * 0.8,
//                     decoration: BoxDecoration(
//                       color: Colors.transparent,
//                     ),
//                   ),
//                 ),
//                 // Hero Content
//                 Padding(
//                   padding: const EdgeInsets.fromLTRB(20, 100, 20, 0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       const Text(
//                         'Welcome to the Raiders Portal',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 36,
//                           fontWeight: FontWeight.bold,
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                       const SizedBox(height: 20),
//                       const Text(
//                         'Manage stats, track progress, and lead your team to success.',
//                         style: TextStyle(
//                           color: Colors.white70,
//                           fontSize: 18,
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                       const SizedBox(height: 40),
//                       ElevatedButton(
//                         onPressed: () {
//                           Navigator.pushNamed(context, '/signup');
//                         },
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor:
//                               const Color(0xFFFFA500), // Gold color
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 60, vertical: 15),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                         ),
//                         child: const Text(
//                           'Get Started',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 18,
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 20),
//                       TextButton(
//                         onPressed: () {
//                           Navigator.pushNamed(context, '/login');
//                         },
//                         child: const Text(
//                           'Already have an account? Sign In',
//                           style: TextStyle(color: Colors.orange),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 20),
//             // Features Section
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Column(
//                 children: [
//                   // Feature 1
//                   buildFeatureItem(
//                     icon: Icons.bar_chart,
//                     title: 'Player Stats Tracking',
//                     description:
//                         'Monitor your players\' stats and performance anytime.',
//                   ),
//                   const SizedBox(height: 20),
//                   // Feature 2
//                   buildFeatureItem(
//                     icon: Icons.group,
//                     title: 'Team Management',
//                     description:
//                         'Easily manage your teams and players from a single dashboard.',
//                   ),
//                   const SizedBox(height: 20),
//                   // Feature 3
//                   buildFeatureItem(
//                     icon: Icons.account_circle,
//                     title: 'Player Profiles',
//                     description: 'Create and customize player profiles.',
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 30),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildFeatureItem(
//       {required IconData icon,
//       required String title,
//       required String description}) {
//     return Row(
//       children: [
//         Icon(icon, color: Colors.orange, size: 40),
//         const SizedBox(width: 20),
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 title,
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 10),
//               Text(
//                 description,
//                 style: const TextStyle(
//                   color: Colors.white70,
//                   fontSize: 14,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class LandingScreen extends StatelessWidget {
//   final String userName; // Pass in the user's name when they log in

//   LandingScreen({required this.userName});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black, // Same black background
//       appBar: AppBar(
//         title: Text('Dashboard'),
//         backgroundColor: Colors.transparent, // Transparent app bar
//         elevation: 0,
//         systemOverlayStyle: SystemUiOverlayStyle(
//           statusBarBrightness: Brightness.dark,
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Welcome Message
//             Text(
//               'Welcome back, $userName!',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 30),

//             // Player Stats Overview
//             Card(
//               color: Colors.grey[900],
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Your Stats Overview',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Text(
//                       'Matches Played: 20\nGoals: 15\nAssists: 10',
//                       style: TextStyle(
//                         color: Colors.white70,
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     ElevatedButton(
//                       onPressed: () {
//                         // Navigate to detailed stats page
//                       },
//                       child: Text('View Full Stats'),
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Color(0xFFFFA500), // Gold color
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),

//             // Upcoming Match Section
//             Card(
//               color: Colors.grey[900],
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Upcoming Match',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Text(
//                       'Opponent: Blue Dragons\nDate: 24th Oct\nLocation: Raiders Stadium',
//                       style: TextStyle(
//                         color: Colors.white70,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),

//             // Actions - Update Profile and Log Out
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     // Navigate to profile update
//                   },
//                   child: Text('Update Profile'),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Color(0xFFFFA500), // Gold color
//                     padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                   ),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     // Log out
//                     Navigator.pop(context); // Pop to the login page
//                   },
//                   child: Text('Log Out'),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.red, // Gold color
//                     padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//       // Optionally, add a Drawer for more navigation options
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               child: Text(
//                 'Menu',
//                 style: TextStyle(color: Colors.white, fontSize: 24),
//               ),
//               decoration: BoxDecoration(
//                 color: Colors.black,
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.person),
//               title: Text('Profile'),
//               onTap: () {
//                 // Navigate to Profile
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.settings),
//               title: Text('Settings'),
//               onTap: () {
//                 // Navigate to Settings
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.logout),
//               title: Text('Log Out'),
//               onTap: () {
//                 // Log out
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Same background color
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2, // 2 columns
          crossAxisSpacing: 16.0, // Space between columns
          mainAxisSpacing: 16.0, // Space between rows
          children: <Widget>[
            buildTile(
              title: 'Teams',
              svgPath: 'lib/assets/teams.svg',
              onTap: () {
                // Handle Teams navigation here
              },
            ),
            buildTile(
              title: 'Player Stats',
              svgPath: 'lib/assets/statistics.svg',
              onTap: () {
                // Handle Player Stats navigation here
              },
            ),
            buildTile(
              title: 'Notes',
              svgPath: 'lib/assets/notes.svg',
              onTap: () {
                // Handle Notes navigation here
              },
            ),
            buildTile(
              title: 'My Profile',
              svgPath: 'lib/assets/profile.svg',
              onTap: () {
                // Handle Profile navigation here
              },
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build each tile
  Widget buildTile({
    required String title,
    required String svgPath,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[900], // Tile background color
          borderRadius: BorderRadius.circular(20), // Rounded corners
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // SVG Image
            SvgPicture.asset(
              svgPath,
              width: 80, // Set the width and height for the SVG icons
              height: 80,
              // color: const Color(0xFFFFA500), // Gold color for SVG
            ),
            const SizedBox(height: 20),
            // Tile title
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
