// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: LoginScreen(),
//   ));
// }

// class LoginScreen extends StatelessWidget {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();

//   void _login() {
//     String email = emailController.text;
//     String password = passwordController.text;
//     // Add your login logic here
//     print('Email: $email, Password: $password');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login Screen'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             TextField(
//               controller: emailController,
//               decoration: InputDecoration(
//                 labelText: 'Email',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 16.0),
//             TextField(
//               controller: passwordController,
//               decoration: InputDecoration(
//                 labelText: 'Password',
//                 border: OutlineInputBorder(),
//               ),
//               obscureText: true, // To hide the password input
//             ),
//             SizedBox(height: 24.0),
//             ElevatedButton(
//               onPressed: _login,
//               child: Text('Login'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class LoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black, // Same background color
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent, // Transparent app bar
//         elevation: 0,
//         systemOverlayStyle: SystemUiOverlayStyle(
//           statusBarBrightness: Brightness.dark,
//         ),
//       ),
//       body: Padding(
//         padding: EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
//         child: SizedBox(
//           height: MediaQuery.of(context).size.height,
//           child: Stack(
//             children: [
//               // Same background circles and blur effect
//               Align(
//                 alignment: AlignmentDirectional(3, -0.3),
//                 child: Container(
//                   height: 300,
//                   width: 300,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.deepPurple,
//                   ),
//                 ),
//               ),
//               Align(
//                 alignment: AlignmentDirectional(-3, -0.3),
//                 child: Container(
//                   height: 300,
//                   width: 300,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.deepPurple,
//                   ),
//                 ),
//               ),
//               Align(
//                 alignment: AlignmentDirectional(0, -1.2),
//                 child: Container(
//                   height: 300,
//                   width: 300,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//               BackdropFilter(
//                 filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
//                 child: Container(
//                   decoration: const BoxDecoration(color: Colors.transparent),
//                 ),
//               ),
//               SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     Image.asset(
//                       'lib/assets/raiders-logo.png', // Path to your logo
//                       width: 150,
//                       height: 150,
//                       fit: BoxFit.contain,
//                     ),
//                     Card(
//                       elevation: 5,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       color: Colors.grey[900],
//                       child: Padding(
//                         padding: const EdgeInsets.all(16.0),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             const Text(
//                               'Sign in',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 24,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             const SizedBox(height: 30),
//                             TextField(
//                               decoration: InputDecoration(
//                                 labelText: 'Email',
//                                 labelStyle: TextStyle(color: Colors.white),
//                                 filled: true,
//                                 fillColor: Colors.grey[800],
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(30),
//                                 ),
//                               ),
//                               style: TextStyle(color: Colors.white),
//                             ),
//                             const SizedBox(height: 20),
//                             TextField(
//                               obscureText: true,
//                               decoration: InputDecoration(
//                                 labelText: 'Password',
//                                 labelStyle: TextStyle(color: Colors.white),
//                                 filled: true,
//                                 fillColor: Colors.grey[800],
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(30),
//                                 ),
//                               ),
//                               style: TextStyle(color: Colors.white),
//                             ),
//                             const SizedBox(height: 30),
//                             ElevatedButton(
//                               onPressed: () {
//                                 Navigator.pushNamed(context, '/landing');
//                               },
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor:
//                                     const Color(0xFFFFA500), // Gold color
//                                 padding: const EdgeInsets.symmetric(
//                                     horizontal: 60, vertical: 15),
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(30),
//                                 ),
//                               ),
//                               child: const Text(
//                                 'Login',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18,
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 32),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               )

//               // Login form or content goes here
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
import 'package:raiders_player_tracking/services/auth_service.dart'; // Import your AuthService

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final AuthService _authService = AuthService();
  bool _isLoading = false;

  void _login() async {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter both email and password')),
      );
      return;
    }

    setState(() {
      _isLoading = true; // Show loading state
    });

    const minDisplayTime = Duration(seconds: 2);

    try {
      final response = await Future.wait([
        _authService.login(email, password),
        Future.delayed(minDisplayTime),
      ]);

      if (response[0].statusCode == 200) {
        Navigator.pushNamed(context, '/landing');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text('Login failed. Please check your credentials.')),
        );
      }
    } catch (e) {
      print("An error occurred: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('An error occurred. Please try again later.')),
      );
    } finally {
      setState(() {
        _isLoading = false; // Remove loading state
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Same background color
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Transparent app bar
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              // Same background circles and blur effect
              Align(
                alignment: AlignmentDirectional(3, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
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
                  decoration: BoxDecoration(
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
                  decoration: BoxDecoration(
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
              SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      'lib/assets/raiders-logo.png', // Path to your logo
                      width: 150,
                      height: 150,
                      fit: BoxFit.contain,
                    ),
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Colors.grey[900],
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Sign in',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 30),
                            TextField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                labelText: 'Email',
                                labelStyle: TextStyle(color: Colors.white),
                                filled: true,
                                fillColor: Colors.grey[800],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              style: TextStyle(color: Colors.white),
                            ),
                            const SizedBox(height: 20),
                            TextField(
                              controller: _passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: TextStyle(color: Colors.white),
                                filled: true,
                                fillColor: Colors.grey[800],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              style: TextStyle(color: Colors.white),
                            ),
                            const SizedBox(height: 30),
                            _isLoading
                                ? CircularProgressIndicator() // Loading indicator
                                : ElevatedButton(
                                    onPressed: _login,
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFFFFA500),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 60, vertical: 15),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                    child: const Text(
                                      'Login',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                            const SizedBox(height: 32),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
