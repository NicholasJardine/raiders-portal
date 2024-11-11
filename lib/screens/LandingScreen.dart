// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class LandingScreen extends StatelessWidget {
//   const LandingScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: Padding(
//         padding: EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             // Logo
//             Image.asset(
//               'lib/assets/raiders-logo.png', // Path to your logo
//               width: 250,
//               height: 250,
//               fit: BoxFit.contain,
//             ),
//             const SizedBox(height: 16), // Space between logo and grid

//             // Use Flexible to allow the grid to adapt without overflow
//             Flexible(
//               child: Container(
//                 padding: const EdgeInsets.all(16.0),
//                 decoration: BoxDecoration(
//                   color: Colors.grey[900], // Background for the grid
//                   borderRadius: BorderRadius.circular(20),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black.withOpacity(0.3),
//                       spreadRadius: 3,
//                       blurRadius: 10,
//                       offset: const Offset(0, 3),
//                     ),
//                   ],
//                 ),
//                 child: Column(
//                   children: [
//                     Center(
//                         child: Text(
//                       'MY PORTAL',
//                       style: TextStyle(
//                         fontSize: 24, // Font size
//                         color: Colors.white, // Text color
//                       ),
//                     )),
//                     const SizedBox(height: 32), // Space between logo and grid

//                     GridView.count(
//                       padding: EdgeInsets.all(0),

//                       crossAxisCount: 2, // 2 columns
//                       crossAxisSpacing: 16.0,
//                       mainAxisSpacing: 16.0,
//                       shrinkWrap: true,
//                       physics: NeverScrollableScrollPhysics(),
//                       children: <Widget>[
//                         buildTile(
//                           title: 'Teams',
//                           svgPath: 'lib/assets/teams.svg',
//                           onTap: () {
//                             // Handle Teams navigation here
//                           },
//                         ),
//                         buildTile(
//                           title: 'Player Stats',
//                           svgPath: 'lib/assets/statistics.svg',
//                           onTap: () {
//                             // Handle Player Stats navigation here
//                           },
//                         ),
//                         buildTile(
//                           title: 'Notes',
//                           svgPath: 'lib/assets/notes.svg',
//                           onTap: () {
//                             // Handle Notes navigation here
//                           },
//                         ),
//                         buildTile(
//                           title: 'My Profile',
//                           svgPath: 'lib/assets/profile.svg',
//                           onTap: () {
//                             // Handle Profile navigation here
//                           },
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Helper method to build each tile
//   Widget buildTile({
//     required String title,
//     required String svgPath,
//     required VoidCallback onTap,
//   }) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.grey[800], // Tile background color
//           borderRadius: BorderRadius.circular(20), // Rounded corners
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.3),
//               spreadRadius: 3,
//               blurRadius: 10,
//               offset: const Offset(0, 3),
//             ),
//           ],
//         ),
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             // SVG Image
//             SvgPicture.asset(
//               svgPath,
//               width: 70, // Adjusted icon size
//               height: 70,
//             ),
//             const SizedBox(height: 10), // Spacing between icon and title
//             // Tile title with wrapping and text scaling
//             Flexible(
//               child: Text(
//                 title,
//                 textAlign: TextAlign.center,
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 16, // Adjusted font size
//                   fontWeight: FontWeight.bold,
//                 ),
//                 maxLines: 1, // Limit to one line
//                 overflow: TextOverflow.ellipsis, // Use ellipsis for long titles
//                 softWrap:
//                     false, // Prevent wrapping and ensure text stays on one line
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:raiders_player_tracking/services/auth_service.dart';

// class LandingScreen extends StatelessWidget {
//   const LandingScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black, // Same background color
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent, // Transparent app bar
//         elevation: 0,
//         // systemOverlayStyle: const SystemUiOverlayStyle(
//         //   statusBarBrightness: Brightness.dark,
//         // ),
//       ),
//       body: Stack(
//         children: [
//           // Background circles and blur effect
//           Align(
//             alignment: AlignmentDirectional(3, -0.3),
//             child: Container(
//               height: 300,
//               width: 300,
//               decoration: const BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.deepPurple,
//               ),
//             ),
//           ),
//           Align(
//             alignment: AlignmentDirectional(-3, -0.3),
//             child: Container(
//               height: 300,
//               width: 300,
//               decoration: const BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.deepPurple,
//               ),
//             ),
//           ),
//           Align(
//             alignment: AlignmentDirectional(0, -1.2),
//             child: Container(
//               height: 300,
//               width: 300,
//               decoration: const BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//           BackdropFilter(
//             filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
//             child: Container(
//               decoration: const BoxDecoration(color: Colors.transparent),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 // Logo
//                 Image.asset(
//                   'lib/assets/raiders-logo.png', // Path to your logo
//                   width: 250,
//                   height: 250,
//                   fit: BoxFit.contain,
//                 ),
//                 const SizedBox(height: 16), // Space between logo and grid

//                 // Use Flexible to allow the grid to adapt without overflow
//                 Flexible(
//                   child: Container(
//                     padding: const EdgeInsets.all(16.0),
//                     decoration: BoxDecoration(
//                       color:
//                           Colors.grey[900], // Dark background for the container
//                       borderRadius: BorderRadius.circular(20),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.3),
//                           spreadRadius: 3,
//                           blurRadius: 10,
//                           offset: const Offset(0, 3),
//                         ),
//                       ],
//                     ),
//                     child: Column(
//                       children: [
//                         // Title in the grid container
//                         const Center(
//                           child: Text(
//                             'MY PORTAL',
//                             style: TextStyle(
//                               fontSize: 24, // Font size
//                               color: Colors.white, // White text color
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                             height: 32), // Space between text and grid

//                         GridView.count(
//                           padding: EdgeInsets.all(0),
//                           crossAxisCount: 2, // 2 columns
//                           crossAxisSpacing: 16.0,
//                           mainAxisSpacing: 16.0,
//                           shrinkWrap: true,
//                           physics: NeverScrollableScrollPhysics(),
//                           children: <Widget>[
//                             buildTile(
//                               title: 'Teams',
//                               svgPath: 'lib/assets/teams.svg',
//                               onTap: () {
//                                 Navigator.pushNamed(context, '/teams');
//                                 // Handle Teams navigation here
//                               },
//                             ),
//                             buildTile(
//                               title: 'Player Stats',
//                               svgPath: 'lib/assets/statistics.svg',
//                               onTap: () {
//                                 // Navigator.pushNamed(context, '/player_stats');
//                                 Navigator.pushNamed(context, '/player_search');
//                               },
//                             ),
//                             buildTile(
//                               title: 'Notes',
//                               svgPath: 'lib/assets/notes.svg',
//                               onTap: () {
//                                 Navigator.pushNamed(context, '/notes');
//                               },
//                             ),
//                             buildTile(
//                               title: 'My Profile',
//                               svgPath: 'lib/assets/profile.svg',
//                               onTap: () {
//                                 Navigator.pushNamed(context, '/profile');

//                                 // Handle Profile navigation here
//                               },
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   // Helper method to build each tile
//   Widget buildTile({
//     required String title,
//     required String svgPath,
//     required VoidCallback onTap,
//   }) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.grey[700], // Tile background color
//           borderRadius: BorderRadius.circular(20), // Rounded corners
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.3),
//               spreadRadius: 3,
//               blurRadius: 10,
//               offset: const Offset(0, 3),
//             ),
//           ],
//         ),
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             // SVG Image
//             SvgPicture.asset(
//               svgPath,
//               width: 70, // Adjusted icon size
//               height: 70,
//               // color: Colors.orange, // Set icon color to match the buttons
//             ),
//             const SizedBox(height: 10), // Spacing between icon and title
//             // Tile title with wrapping and text scaling
//             Flexible(
//               child: Text(
//                 title,
//                 textAlign: TextAlign.center,
//                 style: const TextStyle(
//                   color: Colors.white, // White text color for tile titles
//                   fontSize: 16, // Adjusted font size
//                   fontWeight: FontWeight.bold,
//                 ),
//                 maxLines: 1, // Limit to one line
//                 overflow: TextOverflow.ellipsis, // Use ellipsis for long titles
//                 softWrap:
//                     false, // Prevent wrapping and ensure text stays on one line
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final AuthService _authService = AuthService();

  void _logout() async {
    await _authService.logout();
    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    final AuthService authService = AuthService();

    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
        actions: [
          PopupMenuButton<String>(
            icon: Icon(Icons.menu, color: Colors.white),
            onSelected: (value) {
              if (value == 'logout') _logout();
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: 'logout',
                  child: Text('Logout'),
                ),
              ];
            },
          ),
        ],
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
            padding: EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'lib/assets/raiders-logo.png',
                  width: 250,
                  height: 250,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 16),
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
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
                      children: [
                        const Center(
                          child: Text(
                            'MY PORTAL',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 32),
                        GridView.count(
                          padding: EdgeInsets.all(0),
                          crossAxisCount: 2,
                          crossAxisSpacing: 16.0,
                          mainAxisSpacing: 16.0,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: <Widget>[
                            buildTile(
                              title: 'Teams',
                              svgPath: 'lib/assets/teams.svg',
                              onTap: () {
                                Navigator.pushNamed(context, '/teams');
                              },
                            ),
                            buildTile(
                              title: 'Player Stats',
                              svgPath: 'lib/assets/statistics.svg',
                              onTap: () {
                                Navigator.pushNamed(context, '/player_search');
                              },
                            ),
                            buildTile(
                              title: 'Notes',
                              svgPath: 'lib/assets/notes.svg',
                              onTap: () {
                                Navigator.pushNamed(context, '/notes');
                              },
                            ),
                            buildTile(
                              title: 'My Profile',
                              svgPath: 'lib/assets/profile.svg',
                              onTap: () async {
                                // Retrieve userId from the token
                                final userId =
                                    await authService.getUserIdFromToken();

                                if (userId != null) {
                                  Navigator.pushNamed(
                                    context,
                                    '/profile',
                                    arguments: userId,
                                  );
                                } else {
                                  print("User ID not found. Please log in.");
                                  // Optionally, redirect to the login screen or show an alert
                                }
                              },
                            ),
                          ],
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

  Widget buildTile({
    required String title,
    required String svgPath,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[700],
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              svgPath,
              width: 70,
              height: 70,
            ),
            const SizedBox(height: 10),
            Flexible(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
