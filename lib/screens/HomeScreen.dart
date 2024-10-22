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

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(3, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.deepPurple),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-3, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.deepPurple),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -1.2),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.transparent),
                ),
              ),
              // Logo in the center
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'lib/assets/raiders-logo.png', // Path to your logo
                    width: 250, // Adjust size as necessary
                    height: 250, // Adjust size as necessary
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 30),
                  // Container for the box
                  Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    decoration: BoxDecoration(
                      color: Colors.grey[
                          900], // Dark background color that complements the black screen
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
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Welcome to Raiders players and admin portal',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        // Sign In Button
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/login');
                            // Add sign in functionality here
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
                            'Sign In',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        // Sign Up Button
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/signup');

                            // Add sign up functionality here
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
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
