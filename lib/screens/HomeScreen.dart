// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         systemOverlayStyle:
//             SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
//       ),
//       body: Padding(
//         padding: EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
//         child: SizedBox(
//           height: MediaQuery.of(context).size.height,
//           child: Stack(
//             children: [
//               Align(
//                 alignment: AlignmentDirectional(3, -0.3),
//                 child: Container(
//                   height: 300,
//                   width: 300,
//                   decoration: BoxDecoration(
//                       shape: BoxShape.circle, color: Colors.deepPurple),
//                 ),
//               ),
//               Align(
//                 alignment: AlignmentDirectional(-3, -0.3),
//                 child: Container(
//                   height: 300,
//                   width: 300,
//                   decoration: BoxDecoration(
//                       shape: BoxShape.circle, color: Colors.deepPurple),
//                 ),
//               ),
//               Align(
//                 alignment: AlignmentDirectional(0, -1.2),
//                 child: Container(
//                   height: 300,
//                   width: 300,
//                   decoration: BoxDecoration(
//                       shape: BoxShape.circle, color: Colors.orange),
//                 ),
//               ),
//               BackdropFilter(
//                 filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
//                 child: Container(
//                   decoration: const BoxDecoration(color: Colors.transparent),
//                 ),
//               ),
//               // Add your image in the center
//               Center(
//                 child: Image.asset(
//                   'lib/assets/raiders-logo.png', // Path to your logo
//                   width: 250, // Adjust size as necessary
//                   height: 250, // Adjust size as necessary
//                   fit: BoxFit.contain,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         systemOverlayStyle:
//             SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
//       ),
//       body: Padding(
//         padding: EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
//         child: SizedBox(
//           height: MediaQuery.of(context).size.height,
//           child: Stack(
//             children: [
//               Align(
//                 alignment: AlignmentDirectional(3, -0.3),
//                 child: Container(
//                   height: 300,
//                   width: 300,
//                   decoration: BoxDecoration(
//                       shape: BoxShape.circle, color: Colors.deepPurple),
//                 ),
//               ),
//               Align(
//                 alignment: AlignmentDirectional(-3, -0.3),
//                 child: Container(
//                   height: 300,
//                   width: 300,
//                   decoration: BoxDecoration(
//                       shape: BoxShape.circle, color: Colors.deepPurple),
//                 ),
//               ),
//               Align(
//                 alignment: AlignmentDirectional(0, -1.2),
//                 child: Container(
//                   height: 300,
//                   width: 300,
//                   decoration: BoxDecoration(
//                       shape: BoxShape.circle, color: Colors.orange),
//                 ),
//               ),
//               BackdropFilter(
//                 filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
//                 child: Container(
//                   decoration: const BoxDecoration(color: Colors.transparent),
//                 ),
//               ),
//               // Logo in the center
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                     'lib/assets/raiders-logo.png', // Path to your logo
//                     width: 250, // Adjust size as necessary
//                     height: 250, // Adjust size as necessary
//                     fit: BoxFit.contain,
//                   ),
//                   const SizedBox(height: 30),
//                   // Sign In Button
//                   ElevatedButton(
//                     onPressed: () {
//                       // Add sign in functionality here
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: const Color(
//                           0xFF1E90FF), // Blue color (same as Raiders logo)
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 60, vertical: 15),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                     ),
//                     child: const Text(
//                       'Sign In',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   // Sign Up Button
//                   ElevatedButton(
//                     onPressed: () {
//                       // Add sign up functionality here
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: const Color(0xFF1E90FF),
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 60, vertical: 15),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                     ),
//                     child: const Text(
//                       'Sign Up',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         systemOverlayStyle:
//             SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
//       ),
//       body: Padding(
//         padding: EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
//         child: SizedBox(
//           height: MediaQuery.of(context).size.height,
//           child: Stack(
//             children: [
//               Align(
//                 alignment: AlignmentDirectional(3, -0.3),
//                 child: Container(
//                   height: 300,
//                   width: 300,
//                   decoration: BoxDecoration(
//                       shape: BoxShape.circle, color: Colors.deepPurple),
//                 ),
//               ),
//               Align(
//                 alignment: AlignmentDirectional(-3, -0.3),
//                 child: Container(
//                   height: 300,
//                   width: 300,
//                   decoration: BoxDecoration(
//                       shape: BoxShape.circle, color: Colors.deepPurple),
//                 ),
//               ),
//               Align(
//                 alignment: AlignmentDirectional(0, -1.2),
//                 child: Container(
//                   height: 300,
//                   width: 300,
//                   decoration: BoxDecoration(
//                       shape: BoxShape.circle, color: Colors.orange),
//                 ),
//               ),
//               BackdropFilter(
//                 filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
//                 child: Container(
//                   decoration: const BoxDecoration(color: Colors.transparent),
//                 ),
//               ),
//               // Logo in the center
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                     'lib/assets/raiders-logo.png', // Path to your logo
//                     width: 250, // Adjust size as necessary
//                     height: 250, // Adjust size as necessary
//                     fit: BoxFit.contain,
//                   ),
//                   const SizedBox(height: 30),
//                   // Sign In Button
//                   ElevatedButton(
//                     onPressed: () {
//                       // Add sign in functionality here
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: const Color(0xFFFFA500), // Gold color
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 60, vertical: 15),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                     ),
//                     child: const Text(
//                       'Sign In',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   // Sign Up Button
//                   ElevatedButton(
//                     onPressed: () {
//                       // Add sign up functionality here
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: const Color(0xFFFFA500), // Gold color
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 60, vertical: 15),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                     ),
//                     child: const Text(
//                       'Sign Up',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         systemOverlayStyle:
//             SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
//       ),
//       body: Padding(
//         padding: EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
//         child: SizedBox(
//           height: MediaQuery.of(context).size.height,
//           child: Stack(
//             children: [
//               Align(
//                 alignment: AlignmentDirectional(3, -0.3),
//                 child: Container(
//                   height: 300,
//                   width: 300,
//                   decoration: BoxDecoration(
//                       shape: BoxShape.circle, color: Colors.deepPurple),
//                 ),
//               ),
//               Align(
//                 alignment: AlignmentDirectional(-3, -0.3),
//                 child: Container(
//                   height: 300,
//                   width: 300,
//                   decoration: BoxDecoration(
//                       shape: BoxShape.circle, color: Colors.deepPurple),
//                 ),
//               ),
//               Align(
//                 alignment: AlignmentDirectional(0, -1.2),
//                 child: Container(
//                   height: 300,
//                   width: 300,
//                   decoration: BoxDecoration(
//                       shape: BoxShape.circle, color: Colors.white),
//                 ),
//               ),
//               BackdropFilter(
//                 filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
//                 child: Container(
//                   decoration: const BoxDecoration(color: Colors.transparent),
//                 ),
//               ),
//               // Logo in the center
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                     'lib/assets/raiders-logo.png', // Path to your logo
//                     width: 250, // Adjust size as necessary
//                     height: 250, // Adjust size as necessary
//                     fit: BoxFit.contain,
//                   ),
//                   const SizedBox(height: 30),
//                   // Container for the box
//                   Container(
//                     padding: const EdgeInsets.all(20),
//                     margin: const EdgeInsets.symmetric(horizontal: 40),
//                     decoration: BoxDecoration(
//                       color: Colors.grey[
//                           900], // Dark background color that complements the black screen
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
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         const Text(
//                           'Welcome to Raiders players and admin portal',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         const SizedBox(height: 20),
//                         // Sign In Button
//                         ElevatedButton(
//                           onPressed: () {
//                             Navigator.pushNamed(context, '/login');
//                             // Add sign in functionality here
//                           },
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor:
//                                 const Color(0xFFFFA500), // Gold color
//                             padding: const EdgeInsets.symmetric(
//                                 horizontal: 60, vertical: 15),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30),
//                             ),
//                           ),
//                           child: const Text(
//                             'Sign In',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 18,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 20),
//                         // Sign Up Button
//                         ElevatedButton(
//                           onPressed: () {
//                             Navigator.pushNamed(context, '/signup');

//                             // Add sign up functionality here
//                           },
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor:
//                                 const Color(0xFFFFA500), // Gold color
//                             padding: const EdgeInsets.symmetric(
//                                 horizontal: 60, vertical: 15),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30),
//                             ),
//                           ),
//                           child: const Text(
//                             'Sign Up',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 18,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero Section
            Stack(
              children: [
                // Background Circles
                Positioned(
                  top: -50,
                  left: -50,
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
                Positioned(
                  top: -50,
                  right: -50,
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
                // Blurred Background
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                // Hero Content
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 100, 20, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'lib/assets/raiders-logo.png', // Path to your logo
                        width: 148, // Adjust size as necessary
                        height: 148, // Adjust size as necessary
                        fit: BoxFit.contain,
                      ),
                      const Text(
                        'Welcome to the Raiders Portal',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Manage stats, track progress, and lead your team to success.',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 40),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
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
                          'Get Started',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: const Text(
                          'Already have an account? Sign In',
                          style: TextStyle(color: Colors.orange),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Features Section
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                children: [
                  // Feature 1
                  buildFeatureItem(
                    icon: Icons.bar_chart,
                    title: 'Player Stats Tracking',
                    description:
                        'Monitor your players\' stats and performance anytime.',
                  ),
                  const SizedBox(height: 20),
                  // Feature 2
                  buildFeatureItem(
                    icon: Icons.group,
                    title: 'Team Management',
                    description:
                        'Easily manage your teams and players from a single dashboard.',
                  ),
                  const SizedBox(height: 20),
                  // Feature 3
                  buildFeatureItem(
                    icon: Icons.account_circle,
                    title: 'Player Profiles',
                    description: 'Create and customize player profiles.',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget buildFeatureItem(
      {required IconData icon,
      required String title,
      required String description}) {
    return Row(
      children: [
        Icon(icon, color: Colors.orange, size: 40),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                description,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
