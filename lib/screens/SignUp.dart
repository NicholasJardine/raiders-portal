// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: SignUpScreen(),
//   ));
// }

// class SignUpScreen extends StatelessWidget {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController surnameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController cellNumberController = TextEditingController();

//   void _signUp() {
//     String name = nameController.text;
//     String surname = surnameController.text;
//     String email = emailController.text;
//     String cellNumber = cellNumberController.text;

//     // Add your sign-up logic here (e.g. form validation or API call)
//     print(
//         'Name: $name, Surname: $surname, Email: $email, Cell Number: $cellNumber');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sign Up'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             TextField(
//               controller: nameController,
//               decoration: InputDecoration(
//                 labelText: 'Name',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 16.0),
//             TextField(
//               controller: surnameController,
//               decoration: InputDecoration(
//                 labelText: 'Surname',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 16.0),
//             TextField(
//               controller: emailController,
//               decoration: InputDecoration(
//                 labelText: 'Email',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 16.0),
//             TextField(
//               controller: cellNumberController,
//               decoration: InputDecoration(
//                 labelText: 'Cell Number',
//                 border: OutlineInputBorder(),
//               ),
//               keyboardType: TextInputType.phone, // Use the phone keyboard
//             ),
//             SizedBox(height: 24.0),
//             ElevatedButton(
//               onPressed: _signUp,
//               child: Text('Sign Up'),
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

// class SignUpScreen extends StatelessWidget {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController surnameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController cellNumberController = TextEditingController();

//   void _signUp() {
//     String name = nameController.text;
//     String surname = surnameController.text;
//     String email = emailController.text;
//     String cellNumber = cellNumberController.text;

//     // Add sign-up logic here
//     print('Name: $name, Surname: $surname, Email: $email, Cell: $cellNumber');
//   }

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
//               // Sign Up form or content goes here
//               SingleChildScrollView(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Text(
//                       'Sign Up',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const SizedBox(height: 30),
//                     // Name Field
//                     TextField(
//                       controller: nameController,
//                       decoration: InputDecoration(
//                         labelText: 'Name',
//                         labelStyle: TextStyle(color: Colors.white),
//                         filled: true,
//                         fillColor: Colors.grey[800],
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                       ),
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     const SizedBox(height: 20),
//                     // Surname Field
//                     TextField(
//                       controller: surnameController,
//                       decoration: InputDecoration(
//                         labelText: 'Surname',
//                         labelStyle: TextStyle(color: Colors.white),
//                         filled: true,
//                         fillColor: Colors.grey[800],
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                       ),
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     const SizedBox(height: 20),
//                     // Email Field
//                     TextField(
//                       controller: emailController,
//                       decoration: InputDecoration(
//                         labelText: 'Email',
//                         labelStyle: TextStyle(color: Colors.white),
//                         filled: true,
//                         fillColor: Colors.grey[800],
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                       ),
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     const SizedBox(height: 20),
//                     // Cell Number Field
//                     TextField(
//                       controller: cellNumberController,
//                       decoration: InputDecoration(
//                         labelText: 'Cell Number',
//                         labelStyle: TextStyle(color: Colors.white),
//                         filled: true,
//                         fillColor: Colors.grey[800],
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                       ),
//                       keyboardType: TextInputType.phone,
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     const SizedBox(height: 30),
//                     ElevatedButton(
//                       onPressed: _signUp,
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: const Color(0xFFFFA500), // Gold color
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 60, vertical: 15),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                       ),
//                       child: const Text(
//                         'Sign Up',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18,
//                         ),
//                       ),
//                     ),
//                   ],
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

// class SignUpScreen extends StatelessWidget {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController surnameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController cellNumberController = TextEditingController();

//   void _signUp() {
//     String name = nameController.text;
//     String surname = surnameController.text;
//     String email = emailController.text;
//     String cellNumber = cellNumberController.text;

//     // Add sign-up logic here
//     print('Name: $name, Surname: $surname, Email: $email, Cell: $cellNumber');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black, // Same background color
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent, // Transparent app bar
//         elevation: 0,
//         systemOverlayStyle: const SystemUiOverlayStyle(
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
//               // Sign Up form with Logo and Card
//               SingleChildScrollView(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     // Add the Raiders logo
//                     Image.asset(
//                       'lib/assets/raiders-logo.png', // Path to your logo
//                       width: 150,
//                       height: 150,
//                       fit: BoxFit.contain,
//                     ),
//                     const SizedBox(height: 30), // Space below the logo

//                     // Card to hold the form
//                     Card(
//                       color: Colors.grey[900], // Dark background for the card
//                       elevation: 5,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.all(16.0),
//                         child: Column(
//                           children: [
//                             Center(
//                               child: Text(
//                                 "Registration",
//                                 style: TextStyle(
//                                     color: Colors.white, fontSize: 24),
//                               ),
//                             ),
//                             const SizedBox(
//                               height: 30,
//                             ),
//                             // Name Field
//                             TextField(
//                               controller: nameController,
//                               decoration: InputDecoration(
//                                 labelText: 'Name',
//                                 labelStyle:
//                                     const TextStyle(color: Colors.white),
//                                 filled: true,
//                                 fillColor: Colors.grey[800],
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(30),
//                                 ),
//                               ),
//                               style: const TextStyle(color: Colors.white),
//                             ),
//                             const SizedBox(height: 20),
//                             // Surname Field
//                             TextField(
//                               controller: surnameController,
//                               decoration: InputDecoration(
//                                 labelText: 'Surname',
//                                 labelStyle:
//                                     const TextStyle(color: Colors.white),
//                                 filled: true,
//                                 fillColor: Colors.grey[800],
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(30),
//                                 ),
//                               ),
//                               style: const TextStyle(color: Colors.white),
//                             ),
//                             const SizedBox(height: 20),
//                             // Email Field
//                             TextField(
//                               controller: emailController,
//                               decoration: InputDecoration(
//                                 labelText: 'Email',
//                                 labelStyle:
//                                     const TextStyle(color: Colors.white),
//                                 filled: true,
//                                 fillColor: Colors.grey[800],
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(30),
//                                 ),
//                               ),
//                               style: const TextStyle(color: Colors.white),
//                             ),
//                             const SizedBox(height: 20),
//                             // Cell Number Field
//                             TextField(
//                               controller: cellNumberController,
//                               decoration: InputDecoration(
//                                 labelText: 'Cell Number',
//                                 labelStyle:
//                                     const TextStyle(color: Colors.white),
//                                 filled: true,
//                                 fillColor: Colors.grey[800],
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(30),
//                                 ),
//                               ),
//                               keyboardType: TextInputType.phone,
//                               style: const TextStyle(color: Colors.white),
//                             ),
//                             const SizedBox(height: 30),
//                             ElevatedButton(
//                               onPressed: _signUp,
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
//                                 'Sign Up',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
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

// class SignUpScreen extends StatefulWidget {
//   @override
//   _SignUpScreenState createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final TextEditingController confirmPasswordController =
//       TextEditingController();
//   String selectedRole = 'player'; // Default to player role
//   final List<String> roles = ['player', 'admin'];

//   // Method to handle sign-up logic
//   void _signUp() {
//     String email = emailController.text;
//     String password = passwordController.text;
//     String confirmPassword = confirmPasswordController.text;

//     // Check if passwords match
//     if (password != confirmPassword) {
//       // Show an error message if passwords don't match
//       showDialog(
//         context: context,
//         builder: (context) => AlertDialog(
//           title: Text('Error'),
//           content: Text('Passwords do not match.'),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: Text('OK'),
//             ),
//           ],
//         ),
//       );
//       return;
//     }

//     // Proceed with API call for signup (without confirm password)
//     print('Email: $email, Role: $selectedRole, Password: $password');
//     // Add the API sign-up logic here
//   }

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
//               // Sign Up form with Logo and Card
//               SingleChildScrollView(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     // Add the Raiders logo
//                     Image.asset(
//                       'lib/assets/raiders-logo.png', // Path to your logo
//                       width: 150,
//                       height: 150,
//                       fit: BoxFit.contain,
//                     ),
//                     const SizedBox(height: 30), // Space below the logo

//                     // Card to hold the form
//                     Card(
//                       color: Colors.grey[900], // Dark background for the card
//                       elevation: 5,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.all(16.0),
//                         child: Column(
//                           children: [
//                             Center(
//                               child: Text(
//                                 "Registration",
//                                 style: TextStyle(
//                                     color: Colors.white, fontSize: 24),
//                               ),
//                             ),
//                             const SizedBox(height: 30),
//                             // Email Field
//                             TextField(
//                               controller: emailController,
//                               decoration: InputDecoration(
//                                 labelText: 'Email',
//                                 labelStyle:
//                                     const TextStyle(color: Colors.white),
//                                 filled: true,
//                                 fillColor: Colors.grey[800],
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(30),
//                                 ),
//                               ),
//                               style: const TextStyle(color: Colors.white),
//                             ),
//                             const SizedBox(height: 20),
//                             // Role Dropdown
//                             DropdownButtonFormField<String>(
//                               value: selectedRole,
//                               dropdownColor: Colors.grey[900],
//                               items: roles.map((String role) {
//                                 return DropdownMenuItem<String>(
//                                   value: role,
//                                   child: Text(
//                                     role,
//                                     style: TextStyle(color: Colors.white),
//                                   ),
//                                 );
//                               }).toList(),
//                               onChanged: (newValue) {
//                                 setState(() {
//                                   selectedRole = newValue!;
//                                 });
//                               },
//                               decoration: InputDecoration(
//                                 labelText: 'Role',
//                                 labelStyle:
//                                     const TextStyle(color: Colors.white),
//                                 filled: true,
//                                 fillColor: Colors.grey[800],
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(30),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 20),
//                             // Password Field
//                             TextField(
//                               controller: passwordController,
//                               obscureText: true,
//                               decoration: InputDecoration(
//                                 labelText: 'Password',
//                                 labelStyle:
//                                     const TextStyle(color: Colors.white),
//                                 filled: true,
//                                 fillColor: Colors.grey[800],
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(30),
//                                 ),
//                               ),
//                               style: const TextStyle(color: Colors.white),
//                             ),
//                             const SizedBox(height: 20),
//                             // Confirm Password Field
//                             TextField(
//                               controller: confirmPasswordController,
//                               obscureText: true,
//                               decoration: InputDecoration(
//                                 labelText: 'Confirm Password',
//                                 labelStyle:
//                                     const TextStyle(color: Colors.white),
//                                 filled: true,
//                                 fillColor: Colors.grey[800],
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(30),
//                                 ),
//                               ),
//                               style: const TextStyle(color: Colors.white),
//                             ),
//                             const SizedBox(height: 30),
//                             ElevatedButton(
//                               onPressed: _signUp,
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
//                                 'Sign Up',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
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
import 'package:raiders_player_tracking/services/signup_service.dart'; // Replace with the correct path for your AuthService

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController roleController = TextEditingController();
  String selectedRole = 'player'; // Default role
  final AuthService _authService = AuthService();
  bool _isLoading = false;

  // Function to handle sign up
  void _signUp() async {
    String email = emailController.text;
    String password = passwordController.text;
    String confirmPassword = confirmPasswordController.text;
    // String role = roleController.text;

    if (password != confirmPassword) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Passwords do not match!')),
      );
      return;
    }

    setState(() {
      _isLoading = true; // Show loading state
    });

    const minDisplayTime = Duration(seconds: 2);

    try {
      final response = await Future.wait([
        _authService.signUp(email, password, selectedRole),
        Future.delayed(minDisplayTime),
      ]);

      if (response[0].statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text('Successful sign up! Login to start your journey')),
        );
        Navigator.pushNamed(context, '/login');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Some credentials you entered are not valid')),
        );
      }
    } catch (e) {
      print("An error occurred: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('An error occurred. Please try again later.')),
      );
    } finally {
      setState(() {
        _isLoading = false; // Remove loading state after min display time
      });
    }
  }

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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Add the Raiders logo
                    Image.asset(
                      'lib/assets/raiders-logo.png', // Replace with the path to your logo
                      width: 150,
                      height: 150,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 30), // Space below the logo

                    // Card to hold the form
                    Card(
                      color: Colors.grey[900], // Dark background for the card
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Center(
                              child: Text(
                                "Registration",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              ),
                            ),
                            const SizedBox(height: 30),
                            // Email Field
                            TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                labelText: 'Email',
                                labelStyle:
                                    const TextStyle(color: Colors.white),
                                filled: true,
                                fillColor: Colors.grey[800],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              style: const TextStyle(color: Colors.white),
                            ),
                            const SizedBox(height: 20),
                            // Role Dropdown
                            DropdownButtonFormField<String>(
                              value: selectedRole,
                              decoration: InputDecoration(
                                labelText: 'Role',
                                labelStyle:
                                    const TextStyle(color: Colors.white),
                                filled: true,
                                fillColor: Colors.grey[800],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              dropdownColor: Colors.grey[900],
                              style: const TextStyle(color: Colors.white),
                              items: [
                                DropdownMenuItem(
                                  value: 'player',
                                  child: Text('Player'),
                                ),
                                DropdownMenuItem(
                                  value: 'admin',
                                  child: Text('Admin'),
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  selectedRole = value!;
                                });
                              },
                            ),
                            const SizedBox(height: 20),
                            // Password Field
                            TextField(
                              controller: passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle:
                                    const TextStyle(color: Colors.white),
                                filled: true,
                                fillColor: Colors.grey[800],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              style: const TextStyle(color: Colors.white),
                            ),
                            const SizedBox(height: 20),
                            // Confirm Password Field
                            TextField(
                              controller: confirmPasswordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Confirm Password',
                                labelStyle:
                                    const TextStyle(color: Colors.white),
                                filled: true,
                                fillColor: Colors.grey[800],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              style: const TextStyle(color: Colors.white),
                            ),
                            const SizedBox(height: 30),
                            _isLoading
                                ? CircularProgressIndicator() // Loading indicator
                                : ElevatedButton(
                                    onPressed: _signUp,
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
