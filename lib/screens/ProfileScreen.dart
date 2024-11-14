// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black, // Same background color
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         title: const Text('Profile'),
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
//             padding:
//                 const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 // SvgPicture.asset(
//                 //   'lib/assets/profile.svg',
//                 //   // svgPath,
//                 //   width: 70, // Adjusted icon size
//                 //   height: 70,
//                 //   // color: Colors.orange, // Set icon color to match the buttons
//                 // ),
//                 const SizedBox(height: 20), // Space between avatar and details

//                 // User Details Section
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
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         // User Info Title
//                         const Center(
//                           child: Text(
//                             'User Information',
//                             style: TextStyle(
//                               fontSize: 24, // Font size
//                               color: Colors.white, // White text color
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 20),
//                         Center(
//                           child: SvgPicture.asset(
//                             'lib/assets/profile3.svg',
//                             // svgPath,
//                             width: 70, // Adjusted icon size
//                             height: 70,
//                             // color: Colors.orange, // Set icon color to match the buttons
//                           ),
//                         ), // Space between title and details
//                         const SizedBox(height: 20),

//                         // Name Section
//                         buildProfileDetail(
//                             title: 'Full Name', value: 'John Doe'),

//                         const SizedBox(height: 10),

//                         // Email Section
//                         buildProfileDetail(
//                             title: 'Email', value: 'johndoe@email.com'),

//                         const SizedBox(height: 10),

//                         // Phone Section
//                         buildProfileDetail(
//                             title: 'Phone', value: '+123 456 7890'),

//                         const SizedBox(height: 10),

//                         // Other sections can be added here
//                         buildProfileDetail(title: 'Position', value: 'Forward'),
//                         const SizedBox(height: 40),
//                         Center(
//                           child: ElevatedButton(
//                             onPressed: () {
//                               Navigator.pushNamed(context, '/add_details');
//                             },
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor:
//                                   const Color(0xFFFFA500), // Gold color
//                               padding: const EdgeInsets.symmetric(
//                                   horizontal: 60, vertical: 15),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(30),
//                               ),
//                             ),
//                             child: const Text(
//                               'Edit profile',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 18,
//                               ),
//                             ),
//                           ),
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

//   // Helper method to build each profile detail section
//   Widget buildProfileDetail({required String title, required String value}) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           title,
//           style: const TextStyle(
//             color: Colors.orange, // Orange color for section title
//             fontWeight: FontWeight.bold,
//             fontSize: 16,
//           ),
//         ),
//         const SizedBox(height: 5),
//         Text(
//           value,
//           style: const TextStyle(
//             color: Colors.white, // White color for section value
//             fontSize: 16,
//           ),
//         ),
//         const Divider(
//           color: Colors.white54, // Divider color between sections
//         ),
//       ],
//     );
//   }
// }

// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:raiders_player_tracking/services/players_service.dart'; // Import PlayersService

// class ProfileScreen extends StatefulWidget {
//   final String playerId; // Accept player ID as a parameter

//   const ProfileScreen({Key? key, required this.playerId}) : super(key: key);

//   @override
//   _ProfileScreenState createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   final PlayersService _playersService =
//       PlayersService(); // Initialize PlayersService
//   Map<String, dynamic>? _playerProfile; // Store player profile data
//   bool _isLoading = true; // Loading state

//   @override
//   void initState() {
//     super.initState();
//     _fetchPlayerProfile(); // Fetch data when the screen loads
//   }

//   Future<void> _fetchPlayerProfile() async {
//     try {
//       final profile = await _playersService.getPlayerById(widget.playerId);
//       setState(() {
//         _playerProfile = profile;
//         _isLoading = false;
//       });
//     } catch (e) {
//       print('Error fetching player profile: $e');
//       setState(() {
//         _isLoading = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         title: const Text('Profile'),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: Stack(
//         children: [
//           _buildBackground(),
//           _isLoading
//               ? Center(child: CircularProgressIndicator())
//               : _buildProfileContent(),
//         ],
//       ),
//     );
//   }

//   Widget _buildBackground() {
//     return Stack(
//       children: [
//         Align(
//           alignment: AlignmentDirectional(3, -0.3),
//           child: Container(
//             height: 300,
//             width: 300,
//             decoration: const BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.deepPurple,
//             ),
//           ),
//         ),
//         Align(
//           alignment: AlignmentDirectional(-3, -0.3),
//           child: Container(
//             height: 300,
//             width: 300,
//             decoration: const BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.deepPurple,
//             ),
//           ),
//         ),
//         Align(
//           alignment: AlignmentDirectional(0, -1.2),
//           child: Container(
//             height: 300,
//             width: 300,
//             decoration: const BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.white,
//             ),
//           ),
//         ),
//         BackdropFilter(
//           filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
//           child: Container(
//             decoration: const BoxDecoration(color: Colors.transparent),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildProfileContent() {
//     return Padding(
//       padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           const SizedBox(height: 20),
//           Flexible(
//             child: Container(
//               padding: const EdgeInsets.all(16.0),
//               decoration: BoxDecoration(
//                 color: Colors.grey[900],
//                 borderRadius: BorderRadius.circular(20),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.3),
//                     spreadRadius: 3,
//                     blurRadius: 10,
//                     offset: const Offset(0, 3),
//                   ),
//                 ],
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Center(
//                     child: Text(
//                       'User Information',
//                       style: TextStyle(
//                         fontSize: 24,
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   Center(
//                     child: SvgPicture.asset(
//                       'lib/assets/profile3.svg',
//                       width: 70,
//                       height: 70,
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   buildProfileDetail(
//                     title: 'Full Name',
//                     value:
//                         '${_playerProfile?['first_name']} ${_playerProfile?['last_name']}',
//                   ),
//                   const SizedBox(height: 10),
//                   buildProfileDetail(
//                     title: 'Email',
//                     value: _playerProfile?['email'] ?? 'N/A',
//                   ),
//                   const SizedBox(height: 10),
//                   buildProfileDetail(
//                     title: 'Position',
//                     value: _playerProfile?['position'] ?? 'N/A',
//                   ),
//                   const SizedBox(height: 40),
//                   Center(
//                     child: ElevatedButton(
//                       onPressed: () {
//                         Navigator.pushNamed(context, '/add_details');
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: const Color(0xFFFFA500),
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 60, vertical: 15),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                       ),
//                       child: const Text(
//                         'Edit profile',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildProfileDetail({required String title, required String value}) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           title,
//           style: const TextStyle(
//             color: Colors.orange,
//             fontWeight: FontWeight.bold,
//             fontSize: 16,
//           ),
//         ),
//         const SizedBox(height: 5),
//         Text(
//           value,
//           style: const TextStyle(
//             color: Colors.white,
//             fontSize: 16,
//           ),
//         ),
//         const Divider(
//           color: Colors.white54,
//         ),
//       ],
//     );
//   }
// }

// import 'dart:io';
// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:raiders_player_tracking/services/players_service.dart';

// class ProfileScreen extends StatefulWidget {
//   final String playerId;

//   const ProfileScreen({Key? key, required this.playerId}) : super(key: key);

//   @override
//   _ProfileScreenState createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   final PlayersService _playersService = PlayersService();
//   Map<String, dynamic>? _playerProfile;
//   bool _isLoading = true;
//   final ImagePicker _picker = ImagePicker();
//   File? _selectedImage;

//   @override
//   void initState() {
//     super.initState();
//     _fetchPlayerProfile();
//   }

//   Future<void> _fetchPlayerProfile() async {
//     try {
//       final profile = await _playersService.getPlayerById(widget.playerId);
//       setState(() {
//         _playerProfile = profile;
//         _isLoading = false;
//       });
//     } catch (e) {
//       print('Error fetching player profile: $e');
//       setState(() {
//         _isLoading = false;
//       });
//     }
//   }

//   Future<void> _pickImage(ImageSource source) async {
//     final permissionStatus = await (source == ImageSource.camera
//         ? Permission.camera.request()
//         : Permission.photos.request());

//     if (permissionStatus.isGranted) {
//       final pickedFile = await _picker.pickImage(source: source);
//       if (pickedFile != null) {
//         setState(() {
//           _selectedImage = File(pickedFile.path);
//           // Optionally, upload to server and update avatar_url here
//         });
//       }
//     } else {
//       print("Permission denied");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         title: const Text('Profile'),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: Stack(
//         children: [
//           _buildBackground(),
//           _isLoading
//               ? Center(child: CircularProgressIndicator())
//               : _buildProfileContent(),
//         ],
//       ),
//     );
//   }

//   Widget _buildBackground() {
//     return Stack(
//       children: [
//         Align(
//           alignment: AlignmentDirectional(3, -0.3),
//           child: Container(
//             height: 300,
//             width: 300,
//             decoration: const BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.deepPurple,
//             ),
//           ),
//         ),
//         Align(
//           alignment: AlignmentDirectional(-3, -0.3),
//           child: Container(
//             height: 300,
//             width: 300,
//             decoration: const BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.deepPurple,
//             ),
//           ),
//         ),
//         Align(
//           alignment: AlignmentDirectional(0, -1.2),
//           child: Container(
//             height: 300,
//             width: 300,
//             decoration: const BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.white,
//             ),
//           ),
//         ),
//         BackdropFilter(
//           filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
//           child: Container(
//             decoration: const BoxDecoration(color: Colors.transparent),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildProfileContent() {
//     return Padding(
//       padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           const SizedBox(height: 20),
//           Flexible(
//             child: Container(
//               padding: const EdgeInsets.all(16.0),
//               decoration: BoxDecoration(
//                 color: Colors.grey[900],
//                 borderRadius: BorderRadius.circular(20),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.3),
//                     spreadRadius: 3,
//                     blurRadius: 10,
//                     offset: const Offset(0, 3),
//                   ),
//                 ],
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Center(
//                     child: Text(
//                       'User Information',
//                       style: TextStyle(
//                         fontSize: 24,
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   Center(
//                     child: GestureDetector(
//                       onTap: () => _showImageSourceDialog(),
//                       child: Stack(
//                         alignment: Alignment.center,
//                         children: [
//                           // Display the profile image if available
//                           CircleAvatar(
//                             radius: 50,
//                             backgroundImage: _selectedImage != null
//                                 ? FileImage(_selectedImage!)
//                                 : (_playerProfile?['avatar_url'] != null
//                                     ? NetworkImage(
//                                         _playerProfile!['avatar_url'])
//                                     : null),
//                             // Transparent background if no image
//                             backgroundColor: Colors.transparent,
//                           ),
//                           // Show SVG fallback if avatar_url is null and no image is selected
//                           if (_selectedImage == null &&
//                               _playerProfile?['avatar_url'] == null)
//                             SvgPicture.asset(
//                               'lib/assets/profile3.svg', // Path to your SVG asset
//                               height: 100,
//                               width: 100,
//                             ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   buildProfileDetail(
//                     title: 'Full Name',
//                     value:
//                         '${_playerProfile?['first_name']} ${_playerProfile?['last_name']}',
//                   ),
//                   const SizedBox(height: 10),
//                   buildProfileDetail(
//                     title: 'Email',
//                     value: _playerProfile?['email'] ?? 'N/A',
//                   ),
//                   const SizedBox(height: 10),
//                   buildProfileDetail(
//                     title: 'Position',
//                     value: _playerProfile?['position'] ?? 'N/A',
//                   ),
//                   const SizedBox(height: 40),
//                   Center(
//                     child: ElevatedButton(
//                       onPressed: () {
//                         Navigator.pushNamed(context, '/add_details');
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: const Color(0xFFFFA500),
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 60, vertical: 15),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                       ),
//                       child: const Text(
//                         'Edit profile',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void _showImageSourceDialog() {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: const Text("Choose an option"),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//                 _pickImage(ImageSource.camera);
//               },
//               child: const Text("Camera"),
//             ),
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//                 _pickImage(ImageSource.gallery);
//               },
//               child: const Text("Gallery"),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   Widget buildProfileDetail({required String title, required String value}) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           title,
//           style: const TextStyle(
//             color: Colors.orange,
//             fontWeight: FontWeight.bold,
//             fontSize: 16,
//           ),
//         ),
//         const SizedBox(height: 5),
//         Text(
//           value,
//           style: const TextStyle(
//             color: Colors.white,
//             fontSize: 16,
//           ),
//         ),
//         const Divider(
//           color: Colors.white54,
//         ),
//       ],
//     );
//   }
// }

// import 'dart:io';
// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:raiders_player_tracking/services/players_service.dart';
// import 'package:device_info_plus/device_info_plus.dart';

// class ProfileScreen extends StatefulWidget {
//   final String playerId;

//   const ProfileScreen({Key? key, required this.playerId}) : super(key: key);

//   @override
//   _ProfileScreenState createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   final PlayersService _playersService = PlayersService();
//   Map<String, dynamic>? _playerProfile;
//   bool _isLoading = true;
//   final ImagePicker _picker = ImagePicker();
//   File? _selectedImage;

//   @override
//   void initState() {
//     super.initState();
//     _fetchPlayerProfile();
//   }

//   Future<void> _fetchPlayerProfile() async {
//     try {
//       final profile = await _playersService.getPlayerById(widget.playerId);
//       setState(() {
//         _playerProfile = profile;
//         _isLoading = false;
//       });
//     } catch (e) {
//       print('Error fetching player profile: $e');
//       setState(() {
//         _isLoading = false;
//       });
//     }
//   }

//   Future<void> _pickImage(ImageSource source) async {
//     PermissionStatus permissionStatus = PermissionStatus.denied; // Default

//     if (source == ImageSource.camera) {
//       permissionStatus = await Permission.camera.request();
//     } else if (source == ImageSource.gallery) {
//       if (Platform.isAndroid) {
//         // Get the Android API level
//         final deviceInfo = DeviceInfoPlugin();
//         final androidInfo = await deviceInfo.androidInfo;
//         int androidVersion = androidInfo.version.sdkInt;

//         if (androidVersion >= 33) {
//           // Android 13+ (API level 33), request access to photos
//           permissionStatus = await Permission.photos.request();
//         } else {
//           // For older Android versions, request storage permission
//           permissionStatus = await Permission.storage.request();
//         }
//       }
//     }

//     if (permissionStatus.isGranted) {
//       final pickedFile = await _picker.pickImage(source: source);
//       if (pickedFile != null) {
//         setState(() {
//           _selectedImage = File(pickedFile.path);
//         });
//       }
//     } else if (permissionStatus.isPermanentlyDenied) {
//       await openAppSettings();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         title: const Text('Profile'),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: Stack(
//         children: [
//           _buildBackground(),
//           _isLoading
//               ? Center(child: CircularProgressIndicator())
//               : _buildProfileContent(),
//         ],
//       ),
//     );
//   }

//   Widget _buildBackground() {
//     return Stack(
//       children: [
//         Align(
//           alignment: AlignmentDirectional(3, -0.3),
//           child: Container(
//             height: 300,
//             width: 300,
//             decoration: const BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.deepPurple,
//             ),
//           ),
//         ),
//         Align(
//           alignment: AlignmentDirectional(-3, -0.3),
//           child: Container(
//             height: 300,
//             width: 300,
//             decoration: const BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.deepPurple,
//             ),
//           ),
//         ),
//         Align(
//           alignment: AlignmentDirectional(0, -1.2),
//           child: Container(
//             height: 300,
//             width: 300,
//             decoration: const BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.white,
//             ),
//           ),
//         ),
//         BackdropFilter(
//           filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
//           child: Container(
//             decoration: const BoxDecoration(color: Colors.transparent),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildProfileContent() {
//     return Padding(
//       padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           const SizedBox(height: 20),
//           Flexible(
//             child: Container(
//               padding: const EdgeInsets.all(16.0),
//               decoration: BoxDecoration(
//                 color: Colors.grey[900],
//                 borderRadius: BorderRadius.circular(20),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.3),
//                     spreadRadius: 3,
//                     blurRadius: 10,
//                     offset: const Offset(0, 3),
//                   ),
//                 ],
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Center(
//                     child: Text(
//                       'User Information',
//                       style: TextStyle(
//                         fontSize: 24,
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   Center(
//                     child: GestureDetector(
//                       onTap: () => _showImageSourceDialog(),
//                       child: Stack(
//                         alignment: Alignment.center,
//                         children: [
//                           CircleAvatar(
//                             radius: 50,
//                             backgroundImage: _selectedImage != null
//                                 ? FileImage(_selectedImage!)
//                                 : (_playerProfile?['avatar_url'] != null
//                                     ? NetworkImage(
//                                         _playerProfile!['avatar_url'])
//                                     : null),
//                             backgroundColor: Colors.transparent,
//                           ),
//                           if (_selectedImage == null &&
//                               _playerProfile?['avatar_url'] == null)
//                             SvgPicture.asset(
//                               'lib/assets/profile3.svg', // Path to your SVG asset
//                               height: 100,
//                               width: 100,
//                             ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   buildProfileDetail(
//                     title: 'Full Name',
//                     value:
//                         '${_playerProfile?['first_name']} ${_playerProfile?['last_name']}',
//                   ),
//                   const SizedBox(height: 10),
//                   buildProfileDetail(
//                     title: 'Email',
//                     value: _playerProfile?['email'] ?? 'N/A',
//                   ),
//                   const SizedBox(height: 10),
//                   buildProfileDetail(
//                     title: 'Position',
//                     value: _playerProfile?['position'] ?? 'N/A',
//                   ),
//                   const SizedBox(height: 40),
//                   Center(
//                     child: ElevatedButton(
//                       onPressed: () {
//                         Navigator.pushNamed(context, '/add_details');
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: const Color(0xFFFFA500),
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 60, vertical: 15),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                       ),
//                       child: const Text(
//                         'Edit profile',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void _showImageSourceDialog() {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: const Text("Choose an option"),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//                 _pickImage(ImageSource.camera);
//               },
//               child: const Text("Camera"),
//             ),
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//                 _pickImage(ImageSource.gallery);
//               },
//               child: const Text("Gallery"),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   Widget buildProfileDetail({required String title, required String value}) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           title,
//           style: const TextStyle(
//             color: Colors.orange,
//             fontWeight: FontWeight.bold,
//             fontSize: 16,
//           ),
//         ),
//         const SizedBox(height: 5),
//         Text(
//           value,
//           style: const TextStyle(
//             color: Colors.white,
//             fontSize: 16,
//           ),
//         ),
//         const Divider(
//           color: Colors.white54,
//         ),
//       ],
//     );
//   }
// }

// import 'dart:io';
// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:raiders_player_tracking/services/players_service.dart';
// import 'package:raiders_player_tracking/services/avatar_service.dart';
// import 'package:device_info_plus/device_info_plus.dart';
// import 'dart:convert';

// class ProfileScreen extends StatefulWidget {
//   final String playerId;

//   const ProfileScreen({Key? key, required this.playerId}) : super(key: key);

//   @override
//   _ProfileScreenState createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   final PlayersService _playersService = PlayersService();
//   final AvatarService _avatarService = AvatarService();
//   Map<String, dynamic>? _playerProfile;
//   bool _isLoading = true;
//   bool _isUploading = false; // Loading state for avatar upload
//   final ImagePicker _picker = ImagePicker();
//   File? _selectedImage;

//   @override
//   void initState() {
//     super.initState();
//     _fetchPlayerProfile();
//   }

//   Future<void> _fetchPlayerProfile() async {
//     try {
//       final profile = await _playersService.getPlayerById(widget.playerId);
//       setState(() {
//         _playerProfile = profile;
//         _isLoading = false;
//       });
//     } catch (e) {
//       print('Error fetching player profile: $e');
//       setState(() {
//         _isLoading = false;
//       });
//     }
//   }

//   Future<void> _pickImage(ImageSource source) async {
//     PermissionStatus permissionStatus = PermissionStatus.denied;

//     if (source == ImageSource.camera) {
//       permissionStatus = await Permission.camera.request();
//     } else if (source == ImageSource.gallery) {
//       if (Platform.isAndroid) {
//         final deviceInfo = DeviceInfoPlugin();
//         final androidInfo = await deviceInfo.androidInfo;
//         int androidVersion = androidInfo.version.sdkInt;

//         if (androidVersion >= 33) {
//           permissionStatus = await Permission.photos.request();
//         } else {
//           permissionStatus = await Permission.storage.request();
//         }
//       }
//     }

//     if (permissionStatus.isGranted) {
//       final pickedFile = await _picker.pickImage(source: source);
//       if (pickedFile != null) {
//         setState(() {
//           _selectedImage = File(pickedFile.path);
//         });
//         await _uploadAvatar(File(pickedFile.path));
//       }
//     } else if (permissionStatus.isPermanentlyDenied) {
//       await openAppSettings();
//     }
//   }

//   Future<void> _uploadAvatar(File image) async {
//     setState(() {
//       _isUploading = true; // Start loading indicator
//     });
//     try {
//       final response = await _avatarService.uploadAvatar(image);
//       if (response.statusCode == 200) {
//         final updatedProfile = jsonDecode(response.body)['profile'];
//         setState(() {
//           _playerProfile = updatedProfile;
//           _selectedImage = null; // Clear selected image after upload
//         });
//         print("Avatar uploaded successfully.");
//       } else {
//         print("Failed to upload avatar. Status Code: ${response.statusCode}");
//       }
//     } catch (e) {
//       print("Error uploading avatar: $e");
//     } finally {
//       setState(() {
//         _isUploading = false; // Stop loading indicator
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         title: const Text('Profile'),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: Stack(
//         children: [
//           _buildBackground(),
//           _isLoading
//               ? Center(child: CircularProgressIndicator())
//               : _buildProfileContent(),
//         ],
//       ),
//     );
//   }

//   Widget _buildBackground() {
//     return Stack(
//       children: [
//         Align(
//           alignment: AlignmentDirectional(3, -0.3),
//           child: Container(
//             height: 300,
//             width: 300,
//             decoration: const BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.deepPurple,
//             ),
//           ),
//         ),
//         Align(
//           alignment: AlignmentDirectional(-3, -0.3),
//           child: Container(
//             height: 300,
//             width: 300,
//             decoration: const BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.deepPurple,
//             ),
//           ),
//         ),
//         Align(
//           alignment: AlignmentDirectional(0, -1.2),
//           child: Container(
//             height: 300,
//             width: 300,
//             decoration: const BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.white,
//             ),
//           ),
//         ),
//         BackdropFilter(
//           filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
//           child: Container(
//             decoration: const BoxDecoration(color: Colors.transparent),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildProfileContent() {
//     return Padding(
//       padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           const SizedBox(height: 20),
//           Flexible(
//             child: Container(
//               padding: const EdgeInsets.all(16.0),
//               decoration: BoxDecoration(
//                 color: Colors.grey[900],
//                 borderRadius: BorderRadius.circular(20),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.3),
//                     spreadRadius: 3,
//                     blurRadius: 10,
//                     offset: const Offset(0, 3),
//                   ),
//                 ],
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Center(
//                     child: Text(
//                       'User Information',
//                       style: TextStyle(
//                         fontSize: 24,
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   Center(
//                     child: GestureDetector(
//                       onTap: () => _showImageSourceDialog(),
//                       child: Stack(
//                         alignment: Alignment.center,
//                         children: [
//                           CircleAvatar(
//                             radius: 50,
//                             backgroundImage: _selectedImage != null
//                                 ? FileImage(
//                                     _selectedImage!) // Use selected image if available
//                                 : (_playerProfile?['avatar_url'] != null
//                                     ? NetworkImage(_playerProfile![
//                                         'avatar_url']) // Load from S3 if avatar_url is set
//                                     : null), // No image case
//                             backgroundColor: Colors.transparent,
//                           ),
//                           if (_selectedImage == null &&
//                               _playerProfile?['avatar_url'] == null)
//                             SvgPicture.asset(
//                               'lib/assets/profile3.svg', // Path to your SVG asset
//                               height: 100,
//                               width: 100,
//                             ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   buildProfileDetail(
//                     title: 'Full Name',
//                     value:
//                         '${_playerProfile?['first_name']} ${_playerProfile?['last_name']}',
//                   ),
//                   const SizedBox(height: 10),
//                   buildProfileDetail(
//                     title: 'Email',
//                     value: _playerProfile?['email'] ?? 'N/A',
//                   ),
//                   const SizedBox(height: 10),
//                   buildProfileDetail(
//                     title: 'Position',
//                     value: _playerProfile?['position'] ?? 'N/A',
//                   ),
//                   const SizedBox(height: 40),
//                   Center(
//                     child: ElevatedButton(
//                       onPressed: () {
//                         Navigator.pushNamed(context, '/add_details');
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: const Color(0xFFFFA500),
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 60, vertical: 15),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                       ),
//                       child: const Text(
//                         'Edit profile',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void _showImageSourceDialog() {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: const Text("Choose an option"),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//                 _pickImage(ImageSource.camera);
//               },
//               child: const Text("Camera"),
//             ),
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//                 _pickImage(ImageSource.gallery);
//               },
//               child: const Text("Gallery"),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   Widget buildProfileDetail({required String title, required String value}) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           title,
//           style: const TextStyle(
//             color: Colors.orange,
//             fontWeight: FontWeight.bold,
//             fontSize: 16,
//           ),
//         ),
//         const SizedBox(height: 5),
//         Text(
//           value,
//           style: const TextStyle(
//             color: Colors.white,
//             fontSize: 16,
//           ),
//         ),
//         const Divider(
//           color: Colors.white54,
//         ),
//       ],
//     );
//   }
// }

import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:image_picker/image_picker.dart';
import 'package:raiders_player_tracking/services/players_service.dart';
import 'package:raiders_player_tracking/services/avatar_service.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'dart:convert';
import 'package:raiders_player_tracking/services/auth_service.dart';

class ProfileScreen extends StatefulWidget {
  final String playerId;

  const ProfileScreen({Key? key, required this.playerId}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final PlayersService _playersService = PlayersService();
  final AvatarService _avatarService = AvatarService();
  Map<String, dynamic>? _playerProfile;
  bool _isLoading = true;
  bool _isUploading = false; // Loading state for avatar upload or load
  final ImagePicker _picker = ImagePicker();
  File? _selectedImage;
  final AuthService _authService = AuthService();

  void _logout() async {
    await _authService.logout();
    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  void initState() {
    super.initState();
    _fetchPlayerProfile();
  }

  Future<void> _fetchPlayerProfile() async {
    try {
      final profile = await _playersService.getPlayerById(widget.playerId);
      setState(() {
        _playerProfile = profile;
        _isLoading = false;
      });
    } catch (e) {
      print('Error fetching player profile: $e');
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _pickImage(ImageSource source) async {
    PermissionStatus permissionStatus = PermissionStatus.denied;

    if (source == ImageSource.camera) {
      permissionStatus = await Permission.camera.request();
    } else if (source == ImageSource.gallery) {
      if (Platform.isAndroid) {
        final deviceInfo = DeviceInfoPlugin();
        final androidInfo = await deviceInfo.androidInfo;
        int androidVersion = androidInfo.version.sdkInt;

        if (androidVersion >= 33) {
          permissionStatus = await Permission.photos.request();
        } else {
          permissionStatus = await Permission.storage.request();
        }
      }
    }

    if (permissionStatus.isGranted) {
      final pickedFile = await _picker.pickImage(source: source);
      if (pickedFile != null) {
        setState(() {
          _selectedImage = File(pickedFile.path);
        });
        await _uploadAvatar(File(pickedFile.path));
      }
    } else if (permissionStatus.isPermanentlyDenied) {
      await openAppSettings();
    }
  }

  Future<void> _uploadAvatar(File image) async {
    setState(() {
      _isUploading = true; // Start loading indicator
    });
    try {
      final response = await _avatarService.uploadAvatar(image);
      if (response.statusCode == 200) {
        final updatedProfile = jsonDecode(response.body)['profile'];
        setState(() {
          _playerProfile = updatedProfile;
          _selectedImage = null; // Clear selected image after upload
        });
        print("Avatar uploaded successfully.");
      } else {
        print("Failed to upload avatar. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      print("Error uploading avatar: $e");
    } finally {
      setState(() {
        _isUploading = false; // Stop loading indicator
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(child: Text('User Profile')),
        ),
        automaticallyImplyLeading: true,
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
          _buildBackground(),
          _isLoading
              ? Center(child: CircularProgressIndicator())
              : _buildProfileContent(),
        ],
      ),
    );
  }

  Widget _buildBackground() {
    return Stack(
      children: [
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
      ],
    );
  }

  Widget _buildProfileContent() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      'User Information',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: GestureDetector(
                      onTap: () => _showImageSourceDialog(),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.transparent,
                            child: ClipOval(
                              child: _selectedImage != null
                                  ? Image.file(
                                      _selectedImage!,
                                      fit: BoxFit.cover,
                                      width: 100,
                                      height: 100,
                                    )
                                  : _playerProfile?['avatar_url'] != null
                                      ? Image.network(
                                          _playerProfile!['avatar_url'],
                                          fit: BoxFit.cover,
                                          width: 100,
                                          height: 100,
                                          loadingBuilder: (context, child,
                                              loadingProgress) {
                                            if (loadingProgress == null) {
                                              return child;
                                            } else {
                                              return Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  child,
                                                  CircularProgressIndicator(),
                                                ],
                                              );
                                            }
                                          },
                                        )
                                      : SvgPicture.asset(
                                          'lib/assets/profile3.svg',
                                          height: 100,
                                          width: 100,
                                        ),
                            ),
                          ),
                          if (_isUploading)
                            const Center(
                              child:
                                  CircularProgressIndicator(), // Upload loading indicator
                            ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          buildProfileDetail(
                            title: 'Full Name',
                            value:
                                '${_playerProfile?['first_name']} ${_playerProfile?['last_name']}',
                          ),
                          const SizedBox(height: 10),
                          buildProfileDetail(
                            title: 'Email',
                            value: _playerProfile?['email'] ?? 'N/A',
                          ),
                          const SizedBox(height: 10),
                          buildProfileDetail(
                            title: 'Position',
                            value: _playerProfile?['position'] ?? 'N/A',
                          ),
                          const SizedBox(height: 10),
                          buildProfileDetail(
                            title: 'Age',
                            value: _playerProfile?['age'].toString() ?? 'N/A',
                          ),
                          const SizedBox(height: 20),
                          buildProfileDetail(
                            title: 'Height',
                            value:
                                '${_playerProfile?['height'].toString()} cm ',
                          ),
                          const SizedBox(height: 20),
                          buildProfileDetail(
                            title: 'Weight',
                            value: '${_playerProfile?['weight'].toString()} kg',
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Center(
                    child: ElevatedButton(
                      onPressed: () async {
                        final userId = await _authService.getUserIdFromToken();

                        if (userId != null) {
                          Navigator.pushNamed(
                            context,
                            '/add_details',
                            arguments: userId,
                          );
                        } else {
                          print("User ID not found. Please log in.");
                          // Optionally, redirect to the login screen or show an alert
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFFA500),
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
    );
  }

  void _showImageSourceDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Choose an option"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _pickImage(ImageSource.camera);
              },
              child: const Text("Camera"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _pickImage(ImageSource.gallery);
              },
              child: const Text("Gallery"),
            ),
          ],
        );
      },
    );
  }

  Widget buildProfileDetail({required String title, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.orange,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        const Divider(
          color: Colors.white54,
        ),
      ],
    );
  }
}
