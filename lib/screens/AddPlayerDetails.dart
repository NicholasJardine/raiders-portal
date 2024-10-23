// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class AddPlayerDetails extends StatelessWidget {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController surnameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController cellNumberController = TextEditingController();
//   final TextEditingController ageController = TextEditingController();
//   final TextEditingController idPassportController = TextEditingController();
//   final TextEditingController weightController = TextEditingController();
//   final TextEditingController heightController = TextEditingController();
//   final TextEditingController positionController = TextEditingController();
//   final TextEditingController otherPositionController = TextEditingController();

//   void _addPlayerDetails() {
//     String name = nameController.text;
//     String surname = surnameController.text;
//     String email = emailController.text;
//     String cellNumber = cellNumberController.text;
//     String age = ageController.text;
//     String idPassport = idPassportController.text;
//     String weight = weightController.text;
//     String height = heightController.text;
//     String position = positionController.text;
//     String otherPosition = otherPositionController.text;

//     // Add sign-up logic here
//     print('Name: $name, Surname: $surname, Email: $email, Cell: $cellNumber, '
//         'Age: $age, ID/Passport: $idPassport, Weight: $weight, Height: $height, '
//         'Position: $position, Other Position: $otherPosition');
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
//                                 "Fill in your details",
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
//                             const SizedBox(height: 20),
//                             // Age Field
//                             TextField(
//                               controller: ageController,
//                               decoration: InputDecoration(
//                                 labelText: 'Age',
//                                 labelStyle:
//                                     const TextStyle(color: Colors.white),
//                                 filled: true,
//                                 fillColor: Colors.grey[800],
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(30),
//                                 ),
//                               ),
//                               keyboardType: TextInputType.number,
//                               style: const TextStyle(color: Colors.white),
//                             ),
//                             const SizedBox(height: 20),
//                             // ID/Passport Field
//                             TextField(
//                               controller: idPassportController,
//                               decoration: InputDecoration(
//                                 labelText: 'ID/Passport Number',
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
//                             // Weight Field
//                             TextField(
//                               controller: weightController,
//                               decoration: InputDecoration(
//                                 labelText: 'Weight (kg)',
//                                 labelStyle:
//                                     const TextStyle(color: Colors.white),
//                                 filled: true,
//                                 fillColor: Colors.grey[800],
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(30),
//                                 ),
//                               ),
//                               keyboardType: TextInputType.number,
//                               style: const TextStyle(color: Colors.white),
//                             ),
//                             const SizedBox(height: 20),
//                             // Height Field
//                             TextField(
//                               controller: heightController,
//                               decoration: InputDecoration(
//                                 labelText: 'Height (cm)',
//                                 labelStyle:
//                                     const TextStyle(color: Colors.white),
//                                 filled: true,
//                                 fillColor: Colors.grey[800],
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(30),
//                                 ),
//                               ),
//                               keyboardType: TextInputType.number,
//                               style: const TextStyle(color: Colors.white),
//                             ),
//                             const SizedBox(height: 20),
//                             // Position Field
//                             TextField(
//                               controller: positionController,
//                               decoration: InputDecoration(
//                                 labelText: 'Position',
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
//                             // Other Position Field
//                             TextField(
//                               controller: otherPositionController,
//                               decoration: InputDecoration(
//                                 labelText: 'Other Position',
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
//                               onPressed: _addPlayerDetails,
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
//                                 'Add Player Details',
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

// class AddPlayerDetails extends StatefulWidget {
//   @override
//   _AddPlayerDetailsState createState() => _AddPlayerDetailsState();
// }

// class _AddPlayerDetailsState extends State<AddPlayerDetails> {
//   final PageController _pageController = PageController();
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController surnameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController cellNumberController = TextEditingController();
//   final TextEditingController ageController = TextEditingController();
//   final TextEditingController idPassportController = TextEditingController();
//   final TextEditingController weightController = TextEditingController();
//   final TextEditingController heightController = TextEditingController();
//   final TextEditingController positionController = TextEditingController();
//   final TextEditingController otherPositionController = TextEditingController();

//   void _submitPlayerDetails() {
//     // Add your form submission logic here
//     String name = nameController.text;
//     String surname = surnameController.text;
//     String email = emailController.text;
//     String cellNumber = cellNumberController.text;
//     String age = ageController.text;
//     String idPassport = idPassportController.text;
//     String weight = weightController.text;
//     String height = heightController.text;
//     String position = positionController.text;
//     String otherPosition = otherPositionController.text;

//     print('Submitted Data: '
//         'Name: $name, Surname: $surname, Email: $email, Cell: $cellNumber, '
//         'Age: $age, ID/Passport: $idPassport, Weight: $weight, Height: $height, '
//         'Position: $position, Other Position: $otherPosition');
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
//               // Background circles and blur effect
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
//               // Logo and form with paging
//               Column(
//                 children: [
//                   Image.asset(
//                     'lib/assets/raiders-logo.png', // Path to your logo
//                     width: 150,
//                     height: 150,
//                     fit: BoxFit.contain,
//                   ),
//                   const SizedBox(height: 30), // Space below the logo

//                   // Form Sections using PageView
//                   Expanded(
//                     child: PageView(
//                       controller: _pageController,
//                       physics: NeverScrollableScrollPhysics(),
//                       children: [
//                         // First half of the form
//                         _buildFirstFormSection(),
//                         // Second half of the form
//                         _buildSecondFormSection(),
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

//   // First half of the form
//   Widget _buildFirstFormSection() {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Card(
//           color: Colors.grey[900], // Dark background for the card
//           elevation: 5,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 const Text(
//                   "Personal Information",
//                   style: TextStyle(color: Colors.white, fontSize: 24),
//                 ),
//                 const SizedBox(height: 30),
//                 _buildTextField("Name", nameController),
//                 _buildTextField("Surname", surnameController),
//                 _buildTextField("Email", emailController),
//                 _buildTextField("Cell Number", cellNumberController),
//                 const SizedBox(height: 20),
//                 ElevatedButton(
//                   onPressed: () {
//                     _pageController.nextPage(
//                       duration: Duration(milliseconds: 300),
//                       curve: Curves.easeIn,
//                     );
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color(0xFFFFA500), // Gold color
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 60, vertical: 15),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                   ),
//                   child: const Text(
//                     'Next',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   // Second half of the form
//   Widget _buildSecondFormSection() {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Card(
//           color: Colors.grey[900], // Dark background for the card
//           elevation: 5,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 const Text(
//                   "Player Details",
//                   style: TextStyle(color: Colors.white, fontSize: 24),
//                 ),
//                 const SizedBox(height: 30),
//                 _buildTextField("Age", ageController),
//                 _buildTextField("ID/Passport Number", idPassportController),
//                 _buildTextField("Weight (kg)", weightController),
//                 _buildTextField("Height (cm)", heightController),
//                 _buildTextField("Position", positionController),
//                 _buildTextField("Other Position", otherPositionController),
//                 const SizedBox(height: 20),
//                 ElevatedButton(
//                   onPressed: _submitPlayerDetails,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color(0xFFFFA500), // Gold color
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 60, vertical: 15),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                   ),
//                   child: const Text(
//                     'Submit',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   // Helper method to create a reusable TextField
//   Widget _buildTextField(String label, TextEditingController controller) {
//     return Column(
//       children: [
//         TextField(
//           controller: controller,
//           decoration: InputDecoration(
//             labelText: label,
//             labelStyle: const TextStyle(color: Colors.white),
//             filled: true,
//             fillColor: Colors.grey[800],
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(30),
//             ),
//           ),
//           style: const TextStyle(color: Colors.white),
//         ),
//         const SizedBox(height: 20),
//       ],
//     );
//   }
// }

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddPlayerDetails extends StatefulWidget {
  @override
  _AddPlayerDetailsState createState() => _AddPlayerDetailsState();
}

class _AddPlayerDetailsState extends State<AddPlayerDetails> {
  final PageController _pageController = PageController(initialPage: 0);
  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController cellNumberController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController idPassportController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController positionController = TextEditingController();
  final TextEditingController otherPositionController = TextEditingController();

  void _submitPlayerDetails() {
    String name = nameController.text;
    String surname = surnameController.text;
    String email = emailController.text;
    String cellNumber = cellNumberController.text;
    String age = ageController.text;
    String idPassport = idPassportController.text;
    String weight = weightController.text;
    String height = heightController.text;
    String position = positionController.text;
    String otherPosition = otherPositionController.text;

    print('Submitted Data: '
        'Name: $name, Surname: $surname, Email: $email, Cell: $cellNumber, '
        'Age: $age, ID/Passport: $idPassport, Weight: $weight, Height: $height, '
        'Position: $position,');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Same background color
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Transparent app bar
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
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
              // PageView for the form steps
              PageView(
                controller: _pageController,
                physics: NeverScrollableScrollPhysics(), // Disable swiping
                children: [
                  // First page
                  _buildPageOne(context),
                  // Second page
                  _buildPageTwo(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // First page with basic details
  Widget _buildPageOne(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'lib/assets/raiders-logo.png', // Path to your logo
            width: 150,
            height: 150,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 30),
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
                      "Fill in your details",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                  const SizedBox(height: 30),
                  _buildTextField("Name", nameController),
                  _buildTextField("Surname", surnameController),
                  _buildTextField("Email", emailController),
                  _buildTextField("Cell Number", cellNumberController),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      _pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeIn);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFFA500), // Gold color
                      padding: const EdgeInsets.symmetric(
                          horizontal: 60, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Next',
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
    );
  }

  // Second page with player data
  Widget _buildPageTwo(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'lib/assets/raiders-logo.png', // Path to your logo
            width: 150,
            height: 150,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 30),
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
                      "Player Details",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                  const SizedBox(height: 30),
                  _buildTextField("Age", ageController),
                  _buildTextField("ID/Passport", idPassportController),
                  _buildTextField("Weight", weightController),
                  _buildTextField("Height", heightController),
                  _buildTextField("Position", positionController),
                  // _buildTextField("Other Position", otherPositionController),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: _submitPlayerDetails,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFFA500), // Gold color
                      padding: const EdgeInsets.symmetric(
                          horizontal: 60, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Submit',
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
    );
  }

  // Method to build form fields
  Widget _buildTextField(String label, TextEditingController controller) {
    return Column(
      children: [
        TextField(
          controller: controller,
          decoration: InputDecoration(
            labelText: label,
            labelStyle: const TextStyle(color: Colors.white),
            filled: true,
            fillColor: Colors.grey[800],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          style: const TextStyle(color: Colors.white),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
