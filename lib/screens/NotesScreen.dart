// import 'dart:ui';
// import 'package:flutter/material.dart';

// class NotesScreen extends StatelessWidget {
//   NotesScreen({Key? key}) : super(key: key);

//   // Sample list of notes
//   final List<Map<String, String>> notes = [
//     {
//       'title': 'Great Performance',
//       'player': 'John Doe',
//       'description': 'John played exceptionally well in the last match...',
//     },
//     {
//       'title': 'Needs Improvement',
//       'player': 'Jane Smith',
//       'description': 'Jane struggled with passing accuracy...',
//     },
//     {
//       'title': 'Injury Recovery',
//       'player': 'Mike Brown',
//       'description': 'Mike is recovering well from his ankle injury...',
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black, // Same background color
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         title: const Text('Notes'),
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
//                 const SizedBox(height: 20), // Space between app bar and content

//                 // Notes List Section
//                 Expanded(
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
//                     child: ListView.builder(
//                       itemCount: notes.length,
//                       itemBuilder: (context, index) {
//                         final note = notes[index];
//                         return buildNoteItem(
//                           title: note['title']!,
//                           player: note['player']!,
//                           description: note['description']!,
//                         );
//                       },
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

//   // Helper method to build each note item
//   Widget buildNoteItem({
//     required String title,
//     required String player,
//     required String description,
//   }) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             title,
//             style: const TextStyle(
//               color: Colors.orange, // Orange color for note title
//               fontWeight: FontWeight.bold,
//               fontSize: 18,
//             ),
//           ),
//           const SizedBox(height: 5),
//           Text(
//             'Player: $player',
//             style: const TextStyle(
//               color: Colors.white, // White color for player name
//               fontSize: 16,
//             ),
//           ),
//           const SizedBox(height: 5),
//           Text(
//             description,
//             maxLines: 2,
//             overflow: TextOverflow.ellipsis,
//             style: const TextStyle(
//               color: Colors.white70, // Lighter white for description
//               fontSize: 14,
//             ),
//           ),
//           const Divider(
//             color: Colors.white54, // Divider between notes
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'dart:ui';
// import 'package:flutter/material.dart';

// class NotesScreen extends StatelessWidget {
//   NotesScreen({Key? key}) : super(key: key);

//   // Sample list of notes
//   final List<Map<String, String>> notes = [
//     {
//       'title': 'Great Performance',
//       'player': 'John Doe',
//       'description': 'John played exceptionally well in the last match...',
//     },
//     {
//       'title': 'Needs Improvement',
//       'player': 'Jane Smith',
//       'description': 'Jane struggled with passing accuracy...',
//     },
//     {
//       'title': 'Injury Recovery',
//       'player': 'Mike Brown',
//       'description': 'Mike is recovering well from his ankle injury...',
//     },
//   ];

//   // Sample list of players for dropdown
//   final List<String> players = ['John Doe', 'Jane Smith', 'Mike Brown'];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         title: const Text('Notes'),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
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
//               children: [
//                 const SizedBox(height: 20), // Space between app bar and content

//                 // Notes List Section with Add Note Button
//                 Expanded(
//                   child: Container(
//                     padding: const EdgeInsets.all(16.0),
//                     decoration: BoxDecoration(
//                       color: Colors.grey[900],
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
//                         // Add Note Button and Title Row
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               "Notes",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 24,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             ElevatedButton.icon(
//                               onPressed: () => _showAddNoteDialog(context),
//                               icon: Icon(Icons.add, color: Colors.white),
//                               label: Text("Add Note"),
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: Colors.deepPurple,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(30),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 20),

//                         // Notes list
//                         Expanded(
//                           child: ListView.builder(
//                             itemCount: notes.length,
//                             itemBuilder: (context, index) {
//                               final note = notes[index];
//                               return buildNoteItem(
//                                 title: note['title']!,
//                                 player: note['player']!,
//                                 description: note['description']!,
//                               );
//                             },
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

//   // Helper method to build each note item
//   Widget buildNoteItem({
//     required String title,
//     required String player,
//     required String description,
//   }) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             title,
//             style: const TextStyle(
//               color: Colors.orange,
//               fontWeight: FontWeight.bold,
//               fontSize: 18,
//             ),
//           ),
//           const SizedBox(height: 5),
//           Text(
//             'Player: $player',
//             style: const TextStyle(
//               color: Colors.white,
//               fontSize: 16,
//             ),
//           ),
//           const SizedBox(height: 5),
//           Text(
//             description,
//             maxLines: 2,
//             overflow: TextOverflow.ellipsis,
//             style: const TextStyle(
//               color: Colors.white70,
//               fontSize: 14,
//             ),
//           ),
//           const Divider(
//             color: Colors.white54,
//           ),
//         ],
//       ),
//     );
//   }

//   // Method to show Add Note Dialog
//   void _showAddNoteDialog(BuildContext context) {
//     final titleController = TextEditingController();
//     final descriptionController = TextEditingController();
//     String? selectedPlayer;

//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           backgroundColor: Colors.grey[850],
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//           ),
//           title: Text(
//             'Add Note',
//             style: TextStyle(color: Colors.white),
//           ),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               TextField(
//                 controller: titleController,
//                 decoration: InputDecoration(
//                   labelText: 'Title',
//                   labelStyle: TextStyle(color: Colors.white70),
//                   filled: true,
//                   fillColor: Colors.grey[800],
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//                 style: TextStyle(color: Colors.white),
//               ),
//               const SizedBox(height: 10),
//               TextField(
//                 controller: descriptionController,
//                 maxLines: 3,
//                 decoration: InputDecoration(
//                   labelText: 'Description',
//                   labelStyle: TextStyle(color: Colors.white70),
//                   filled: true,
//                   fillColor: Colors.grey[800],
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//                 style: TextStyle(color: Colors.white),
//               ),
//               const SizedBox(height: 10),
//               DropdownButtonFormField<String>(
//                 value: selectedPlayer,
//                 items: players.map((player) {
//                   return DropdownMenuItem(
//                     value: player,
//                     child: Text(player, style: TextStyle(color: Colors.white)),
//                   );
//                 }).toList(),
//                 onChanged: (value) {
//                   selectedPlayer = value;
//                 },
//                 dropdownColor: Colors.grey[800],
//                 decoration: InputDecoration(
//                   labelText: 'Player',
//                   labelStyle: TextStyle(color: Colors.white70),
//                   filled: true,
//                   fillColor: Colors.grey[800],
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.of(context).pop(),
//               child: Text('Cancel', style: TextStyle(color: Colors.white70)),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // Handle note addition here (e.g., save to database or state)
//                 Navigator.of(context).pop();
//               },
//               child: Text('Add Note'),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.deepPurple,
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
// import 'dart:convert';
// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:raiders_player_tracking/services/players_service.dart';

// class NotesScreen extends StatefulWidget {
//   @override
//   _NotesScreenState createState() => _NotesScreenState();
// }

// class _NotesScreenState extends State<NotesScreen> {
//   final List<Map<String, String>> notes = [
//     {
//       'title': 'Great Performance',
//       'player': 'John Doe',
//       'description': 'John played exceptionally well in the last match...',
//     },
//     {
//       'title': 'Needs Improvement',
//       'player': 'Jane Smith',
//       'description': 'Jane struggled with passing accuracy...',
//     },
//     {
//       'title': 'Injury Recovery',
//       'player': 'Mike Brown',
//       'description': 'Mike is recovering well from his ankle injury...',
//     },
//   ];

//   List<String> players = []; // List to hold players fetched from service
//   String? selectedPlayer;
//   final PlayersService _playersService = PlayersService();

//   @override
//   void initState() {
//     super.initState();
//     _fetchPlayers(); // Fetch players when screen loads
//   }

//   Future<void> _fetchPlayers() async {
//     try {
//       final response = await _playersService.getPlayers();
//       if (response.statusCode == 200) {
//         final List<dynamic> data = jsonDecode(response.body);
//         setState(() {
//           players = data
//               .map((player) => '${player['first_name']} ${player['last_name']}')
//               .toList();
//         });
//       } else {
//         throw Exception('Failed to load players');
//       }
//     } catch (e) {
//       print('Error fetching players: $e');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         title: const Text('Notes'),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: Stack(
//         children: [
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
//               children: [
//                 const SizedBox(height: 20),
//                 Expanded(
//                   child: Container(
//                     padding: const EdgeInsets.all(16.0),
//                     decoration: BoxDecoration(
//                       color: Colors.grey[900],
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
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               "Notes",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 24,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             ElevatedButton.icon(
//                               onPressed: () => _showAddNoteDialog(context),
//                               icon: Icon(Icons.add, color: Colors.white),
//                               label: Text("Add Note"),
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: Colors.deepPurple,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(30),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 20),
//                         Expanded(
//                           child: ListView.builder(
//                             itemCount: notes.length,
//                             itemBuilder: (context, index) {
//                               final note = notes[index];
//                               return buildNoteItem(
//                                 title: note['title']!,
//                                 player: note['player']!,
//                                 description: note['description']!,
//                               );
//                             },
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

//   Widget buildNoteItem({
//     required String title,
//     required String player,
//     required String description,
//   }) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             title,
//             style: const TextStyle(
//               color: Colors.orange,
//               fontWeight: FontWeight.bold,
//               fontSize: 18,
//             ),
//           ),
//           const SizedBox(height: 5),
//           Text(
//             'Player: $player',
//             style: const TextStyle(
//               color: Colors.white,
//               fontSize: 16,
//             ),
//           ),
//           const SizedBox(height: 5),
//           Text(
//             description,
//             maxLines: 2,
//             overflow: TextOverflow.ellipsis,
//             style: const TextStyle(
//               color: Colors.white70,
//               fontSize: 14,
//             ),
//           ),
//           const Divider(
//             color: Colors.white54,
//           ),
//         ],
//       ),
//     );
//   }

//   void _showAddNoteDialog(BuildContext context) {
//     final titleController = TextEditingController();
//     final descriptionController = TextEditingController();
//     String? selectedPlayer;

//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           backgroundColor: Colors.grey[850],
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//           ),
//           title: Text(
//             'Add Note',
//             style: TextStyle(color: Colors.white),
//           ),
//           content: SingleChildScrollView(
//             child: Column(
//               children: [
//                 TextField(
//                   controller: titleController,
//                   decoration: InputDecoration(
//                     labelText: 'Title',
//                     labelStyle: TextStyle(color: Colors.white70),
//                     filled: true,
//                     fillColor: Colors.grey[800],
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 const SizedBox(height: 10),
//                 TextField(
//                   controller: descriptionController,
//                   maxLines: 3,
//                   decoration: InputDecoration(
//                     labelText: 'Description',
//                     alignLabelWithHint: true,
//                     labelStyle: TextStyle(color: Colors.white70),
//                     filled: true,
//                     fillColor: Colors.grey[800],
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 const SizedBox(height: 10),
//                 DropdownButtonFormField<String>(
//                   value: selectedPlayer,
//                   items: players.map((player) {
//                     return DropdownMenuItem(
//                       value: player,
//                       child:
//                           Text(player, style: TextStyle(color: Colors.white)),
//                     );
//                   }).toList(),
//                   onChanged: (value) {
//                     setState(() {
//                       selectedPlayer = value;
//                     });
//                   },
//                   dropdownColor: Colors.grey[800],
//                   decoration: InputDecoration(
//                     labelText: 'Player',
//                     labelStyle: TextStyle(color: Colors.white70),
//                     filled: true,
//                     fillColor: Colors.grey[800],
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.of(context).pop(),
//               child: Text('Cancel', style: TextStyle(color: Colors.white70)),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // Handle note creation logic
//                 Navigator.of(context).pop();
//               },
//               child: Text('Add Note'),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.deepPurple,
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }

// import 'dart:convert';
// import 'dart:ui';
// import 'package:flutter/material.dart';
// // import 'package:dropdown_search/dropdown_search.dart';
// import 'package:raiders_player_tracking/services/players_service.dart';
// import 'package:dropdown_search/dropdown_search.dart';

// class NotesScreen extends StatefulWidget {
//   @override
//   _NotesScreenState createState() => _NotesScreenState();
// }

// class _NotesScreenState extends State<NotesScreen> {
//   final List<Map<String, String>> notes = [
//     {
//       'title': 'Great Performance',
//       'player': 'John Doe',
//       'description': 'John played exceptionally well in the last match...',
//     },
//     {
//       'title': 'Needs Improvement',
//       'player': 'Jane Smith',
//       'description': 'Jane struggled with passing accuracy...',
//     },
//     {
//       'title': 'Injury Recovery',
//       'player': 'Mike Brown',
//       'description': 'Mike is recovering well from his ankle injury...',
//     },
//   ];

//   final PlayersService _playersService = PlayersService();
//   String? selectedPlayer;

//   Future<List<String>> _fetchPlayers(String filter) async {
//     try {
//       final response = await _playersService.getPlayers();
//       if (response.statusCode == 200) {
//         final List<dynamic> data = jsonDecode(response.body);
//         List<String> playerNames = data
//             .map((player) => '${player['first_name']} ${player['last_name']}')
//             .toList()
//             .cast<String>();
//         if (filter.isNotEmpty) {
//           playerNames = playerNames
//               .where(
//                   (name) => name.toLowerCase().contains(filter.toLowerCase()))
//               .toList();
//         }
//         return playerNames;
//       } else {
//         throw Exception('Failed to load players');
//       }
//     } catch (e) {
//       print('Error fetching players: $e');
//       return [];
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         title: const Text('Notes'),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: Stack(
//         children: [
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
//               children: [
//                 const SizedBox(height: 20),
//                 Expanded(
//                   child: Container(
//                     padding: const EdgeInsets.all(16.0),
//                     decoration: BoxDecoration(
//                       color: Colors.grey[900],
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
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               "Notes",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 24,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             ElevatedButton.icon(
//                               onPressed: () => _showAddNoteDialog(context),
//                               icon: Icon(Icons.add, color: Colors.white),
//                               label: Text("Add Note"),
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: Colors.deepPurple,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(30),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 20),
//                         Expanded(
//                           child: ListView.builder(
//                             itemCount: notes.length,
//                             itemBuilder: (context, index) {
//                               final note = notes[index];
//                               return buildNoteItem(
//                                 title: note['title']!,
//                                 player: note['player']!,
//                                 description: note['description']!,
//                               );
//                             },
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

//   Widget buildNoteItem({
//     required String title,
//     required String player,
//     required String description,
//   }) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             title,
//             style: const TextStyle(
//               color: Colors.orange,
//               fontWeight: FontWeight.bold,
//               fontSize: 18,
//             ),
//           ),
//           const SizedBox(height: 5),
//           Text(
//             'Player: $player',
//             style: const TextStyle(
//               color: Colors.white,
//               fontSize: 16,
//             ),
//           ),
//           const SizedBox(height: 5),
//           Text(
//             description,
//             maxLines: 2,
//             overflow: TextOverflow.ellipsis,
//             style: const TextStyle(
//               color: Colors.white70,
//               fontSize: 14,
//             ),
//           ),
//           const Divider(
//             color: Colors.white54,
//           ),
//         ],
//       ),
//     );
//   }

//   void _showAddNoteDialog(BuildContext context) {
//     final titleController = TextEditingController();
//     final descriptionController = TextEditingController();

//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           backgroundColor: Colors.grey[850],
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//           ),
//           title: Text(
//             'Add Note',
//             style: TextStyle(color: Colors.white),
//           ),
//           content: SingleChildScrollView(
//             child: Column(
//               children: [
//                 TextField(
//                   controller: titleController,
//                   decoration: InputDecoration(
//                     labelText: 'Title',
//                     labelStyle: TextStyle(color: Colors.white70),
//                     filled: true,
//                     fillColor: Colors.grey[800],
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 const SizedBox(height: 10),
//                 TextField(
//                   controller: descriptionController,
//                   maxLines: 3,
//                   decoration: InputDecoration(
//                     labelText: 'Description',
//                     labelStyle: TextStyle(color: Colors.white70),
//                     filled: true,
//                     fillColor: Colors.grey[800],
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 const SizedBox(height: 10),
//                 DropdownSearch<String>(
//                   items:
//                       players, // This should be your list of player names directly
//                   onChanged: (String? value) {
//                     setState(() {
//                       selectedPlayer = value;
//                     });
//                   },
//                   popupProps: PopupProps.menu(
//                     showSearchBox:
//                         true, // Enables the search box within the dropdown
//                     searchFieldProps: TextFieldProps(
//                       decoration: InputDecoration(
//                         hintText: 'Search Player',
//                         hintStyle: TextStyle(color: Colors.white70),
//                         filled: true,
//                         fillColor: Colors.grey[800],
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                   dropdownBuilder: (context, selectedItem) => Text(
//                     selectedItem ?? 'Select Player',
//                     style: TextStyle(color: Colors.white70),
//                   ),
//                   dropdownButtonProps: DropdownButtonProps(
//                     icon: Icon(Icons.arrow_drop_down, color: Colors.white70),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.of(context).pop(),
//               child: Text('Cancel', style: TextStyle(color: Colors.white70)),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // Handle note addition here (e.g., save to database or state)
//                 Navigator.of(context).pop();
//               },
//               child: Text('Add Note'),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.deepPurple,
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }

// import 'dart:convert';
// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:raiders_player_tracking/services/players_service.dart';

// class NotesScreen extends StatefulWidget {
//   @override
//   _NotesScreenState createState() => _NotesScreenState();
// }

// class _NotesScreenState extends State<NotesScreen> {
//   final List<Map<String, String>> notes = [
//     {
//       'title': 'Great Performance',
//       'player': 'John Doe',
//       'description': 'John played exceptionally well in the last match...',
//     },
//     {
//       'title': 'Needs Improvement',
//       'player': 'Jane Smith',
//       'description': 'Jane struggled with passing accuracy...',
//     },
//     {
//       'title': 'Injury Recovery',
//       'player': 'Mike Brown',
//       'description': 'Mike is recovering well from his ankle injury...',
//     },
//   ];

//   final PlayersService _playersService = PlayersService();
//   String? selectedPlayer;

//   Future<List<String>> _fetchPlayers(String filter) async {
//     try {
//       final response = await _playersService.getPlayers();
//       if (response.statusCode == 200) {
//         final List<dynamic> data = jsonDecode(response.body);
//         List<String> playerNames = data
//             .map((player) => '${player['first_name']} ${player['last_name']}')
//             .toList()
//             .cast<String>();
//         if (filter.isNotEmpty) {
//           playerNames = playerNames
//               .where(
//                   (name) => name.toLowerCase().contains(filter.toLowerCase()))
//               .toList();
//         }
//         return playerNames;
//       } else {
//         throw Exception('Failed to load players');
//       }
//     } catch (e) {
//       print('Error fetching players: $e');
//       return [];
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         title: const Text('Notes'),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: Stack(
//         children: [
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
//               children: [
//                 const SizedBox(height: 20),
//                 Expanded(
//                   child: Container(
//                     padding: const EdgeInsets.all(16.0),
//                     decoration: BoxDecoration(
//                       color: Colors.grey[900],
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
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               "Notes",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 24,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             ElevatedButton.icon(
//                               onPressed: () => _showAddNoteDialog(context),
//                               icon: Icon(Icons.add, color: Colors.white),
//                               label: Text(
//                                 "Add Note",
//                                 style: TextStyle(color: Colors.white),
//                               ),
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: Colors.deepPurple,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(30),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 20),
//                         Expanded(
//                           child: ListView.builder(
//                             itemCount: notes.length,
//                             itemBuilder: (context, index) {
//                               final note = notes[index];
//                               return buildNoteItem(
//                                 title: note['title']!,
//                                 player: note['player']!,
//                                 description: note['description']!,
//                               );
//                             },
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

//   Widget buildNoteItem({
//     required String title,
//     required String player,
//     required String description,
//   }) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             title,
//             style: const TextStyle(
//               color: Colors.orange,
//               fontWeight: FontWeight.bold,
//               fontSize: 18,
//             ),
//           ),
//           const SizedBox(height: 5),
//           Text(
//             'Player: $player',
//             style: const TextStyle(
//               color: Colors.white,
//               fontSize: 16,
//             ),
//           ),
//           const SizedBox(height: 5),
//           Text(
//             description,
//             maxLines: 2,
//             overflow: TextOverflow.ellipsis,
//             style: const TextStyle(
//               color: Colors.white70,
//               fontSize: 14,
//             ),
//           ),
//           const Divider(
//             color: Colors.white54,
//           ),
//         ],
//       ),
//     );
//   }

//   void _showAddNoteDialog(BuildContext context) {
//     final titleController = TextEditingController();
//     final descriptionController = TextEditingController();

//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           backgroundColor: Colors.grey[850],
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//           ),
//           title: Text(
//             'Add Note',
//             style: TextStyle(color: Colors.white),
//           ),
//           content: SingleChildScrollView(
//             child: Column(
//               children: [
//                 TextField(
//                   controller: titleController,
//                   decoration: InputDecoration(
//                     labelText: 'Title',
//                     labelStyle: TextStyle(color: Colors.white70),
//                     filled: true,
//                     fillColor: Colors.grey[800],
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 const SizedBox(height: 10),
//                 TextField(
//                   controller: descriptionController,
//                   maxLines: 3,
//                   decoration: InputDecoration(
//                     labelText: 'Description',
//                     labelStyle: TextStyle(color: Colors.white70),
//                     filled: true,
//                     fillColor: Colors.grey[800],
//                     alignLabelWithHint: true, // Aligns the label at the top
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 const SizedBox(height: 10),
//                 DropdownSearch<String>(
//                   asyncItems: (String filter) => _fetchPlayers(filter),
//                   onChanged: (String? value) {
//                     setState(() {
//                       selectedPlayer = value;
//                     });
//                   },
//                   dropdownDecoratorProps: DropDownDecoratorProps(
//                     dropdownSearchDecoration: InputDecoration(
//                       labelText: 'Select Player',
//                       labelStyle: TextStyle(color: Colors.white70),
//                       filled: true,
//                       fillColor: Colors.grey[800],
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                     ),
//                   ),
//                   popupProps: PopupProps.menu(
//                     showSearchBox: true,
//                     searchFieldProps: TextFieldProps(
//                       decoration: InputDecoration(
//                         hintText: 'Search Player',
//                         hintStyle: TextStyle(color: Colors.white70),
//                         filled: true,
//                         fillColor: Colors.grey[800],
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.of(context).pop(),
//               child: Text('Cancel', style: TextStyle(color: Colors.white)),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // Handle note addition here (e.g., save to database or state)
//                 Navigator.of(context).pop();
//               },
//               child: Text(
//                 'Add Note',
//                 style: TextStyle(color: Colors.white),
//               ),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.deepPurple,
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
// // }
// import 'dart:convert';
// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:raiders_player_tracking/services/players_service.dart';
// import 'package:raiders_player_tracking/services/notes_service.dart';

// class NotesScreen extends StatefulWidget {
//   @override
//   _NotesScreenState createState() => _NotesScreenState();
// }

// class _NotesScreenState extends State<NotesScreen> {
//   final List<Map<String, String>> notes = [
//     {
//       'title': 'Great Performance',
//       'player': 'John Doe',
//       'description': 'John played exceptionally well in the last match...',
//     },
//     {
//       'title': 'Needs Improvement',
//       'player': 'Jane Smith',
//       'description': 'Jane struggled with passing accuracy...',
//     },
//     {
//       'title': 'Injury Recovery',
//       'player': 'Mike Brown',
//       'description': 'Mike is recovering well from his ankle injury...',
//     },
//   ];

//   final PlayersService _playersService = PlayersService();
//   final NotesService _notesService = NotesService();
//   List<Map<String, dynamic>> players = [];
//   int? selectedPlayerId;

//   Future<List<String>> _fetchPlayers(String filter) async {
//     try {
//       final response = await _playersService.getPlayers();
//       if (response.statusCode == 200) {
//         final List<dynamic> data = jsonDecode(response.body);
//         players = data.cast<Map<String, dynamic>>();
//         List<String> playerNames = players
//             .map((player) => '${player['first_name']} ${player['last_name']}')
//             .toList();
//         if (filter.isNotEmpty) {
//           playerNames = playerNames
//               .where(
//                   (name) => name.toLowerCase().contains(filter.toLowerCase()))
//               .toList();
//         }
//         return playerNames;
//       } else {
//         throw Exception('Failed to load players');
//       }
//     } catch (e) {
//       print('Error fetching players: $e');
//       return [];
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         title: const Text('Notes'),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: Stack(
//         children: [
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
//               children: [
//                 const SizedBox(height: 20),
//                 Expanded(
//                   child: Container(
//                     padding: const EdgeInsets.all(16.0),
//                     decoration: BoxDecoration(
//                       color: Colors.grey[900],
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
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               "Notes",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 24,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             ElevatedButton.icon(
//                               onPressed: () => _showAddNoteDialog(context),
//                               icon: Icon(Icons.add, color: Colors.white),
//                               label: Text(
//                                 "Add Note",
//                                 style: TextStyle(color: Colors.white),
//                               ),
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: Colors.deepPurple,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(30),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 20),
//                         Expanded(
//                           child: ListView.builder(
//                             itemCount: notes.length,
//                             itemBuilder: (context, index) {
//                               final note = notes[index];
//                               return buildNoteItem(
//                                 title: note['title']!,
//                                 player: note['player']!,
//                                 description: note['description']!,
//                               );
//                             },
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

//   Widget buildNoteItem({
//     required String title,
//     required String player,
//     required String description,
//   }) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             title,
//             style: const TextStyle(
//               color: Colors.orange,
//               fontWeight: FontWeight.bold,
//               fontSize: 18,
//             ),
//           ),
//           const SizedBox(height: 5),
//           Text(
//             'Player: $player',
//             style: const TextStyle(
//               color: Colors.white,
//               fontSize: 16,
//             ),
//           ),
//           const SizedBox(height: 5),
//           Text(
//             description,
//             maxLines: 2,
//             overflow: TextOverflow.ellipsis,
//             style: const TextStyle(
//               color: Colors.white70,
//               fontSize: 14,
//             ),
//           ),
//           const Divider(
//             color: Colors.white54,
//           ),
//         ],
//       ),
//     );
//   }

//   void _showAddNoteDialog(BuildContext context) {
//     final titleController = TextEditingController();
//     final descriptionController = TextEditingController();

//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           backgroundColor: Colors.grey[850],
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//           ),
//           title: Text(
//             'Add Note',
//             style: TextStyle(color: Colors.white),
//           ),
//           content: SingleChildScrollView(
//             child: Column(
//               children: [
//                 TextField(
//                   controller: titleController,
//                   decoration: InputDecoration(
//                     labelText: 'Title',
//                     labelStyle: TextStyle(color: Colors.white70),
//                     filled: true,
//                     fillColor: Colors.grey[800],
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 const SizedBox(height: 10),
//                 TextField(
//                   controller: descriptionController,
//                   maxLines: 3,
//                   decoration: InputDecoration(
//                     labelText: 'Description',
//                     labelStyle: TextStyle(color: Colors.white70),
//                     filled: true,
//                     fillColor: Colors.grey[800],
//                     alignLabelWithHint: true,
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 const SizedBox(height: 10),
//                 DropdownSearch<String>(
//                   asyncItems: (String filter) => _fetchPlayers(filter),
//                   onChanged: (String? value) {
//                     if (value != null) {
//                       final player = players.firstWhere((player) =>
//                           '${player['first_name']} ${player['last_name']}' ==
//                           value);
//                       selectedPlayerId = player['user_id'];
//                     }
//                   },
//                   dropdownDecoratorProps: DropDownDecoratorProps(
//                     dropdownSearchDecoration: InputDecoration(
//                       labelText: 'Select Player',
//                       labelStyle: TextStyle(color: Colors.white70),
//                       filled: true,
//                       fillColor: Colors.grey[800],
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                     ),
//                   ),
//                   popupProps: PopupProps.menu(
//                     showSearchBox: true,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.of(context).pop(),
//               child: Text('Cancel', style: TextStyle(color: Colors.white)),
//             ),
//             ElevatedButton(
//               onPressed: () async {
//                 final title = titleController.text;
//                 final description = descriptionController.text;
//                 if (selectedPlayerId == null) {
//                   print('No player selected');
//                   return;
//                 }

//                 try {
//                   final response = await _notesService.createNote(
//                     title: title,
//                     description: description,
//                     player_id: selectedPlayerId!,
//                     coach_id: 14,
//                   );

//                   if (response.statusCode == 201) {
//                     print("Note created successfully");
//                   } else {
//                     print("Failed to create note");
//                   }
//                 } catch (e) {
//                   print("Error creating note: $e");
//                 }
//                 Navigator.of(context).pop();
//               },
//               child: Text(
//                 'Add Note',
//                 style: TextStyle(color: Colors.white),
//               ),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.deepPurple,
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }

import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:raiders_player_tracking/services/players_service.dart';
import 'package:raiders_player_tracking/services/notes_service.dart';
import 'package:raiders_player_tracking/services/auth_service.dart';

class NotesScreen extends StatefulWidget {
  @override
  _NotesScreenState createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  final List<Map<String, String>> notes = [
    {
      'title': 'Great Performance',
      'player': 'John Doe',
      'description': 'John played exceptionally well in the last match...',
    },
    {
      'title': 'Needs Improvement',
      'player': 'Jane Smith',
      'description': 'Jane struggled with passing accuracy...',
    },
    {
      'title': 'Injury Recovery',
      'player': 'Mike Brown',
      'description': 'Mike is recovering well from his ankle injury...',
    },
  ];

  final PlayersService _playersService = PlayersService();
  final NotesService _notesService = NotesService();
  final AuthService _authService = AuthService();

  List<Map<String, dynamic>> players = [];
  int? selectedPlayerId;
  int? loggedInUserId;

  Future<void> _initializeUserId() async {
    final userId = await _authService.getUserIdFromToken();
    if (userId != null) {
      setState(() {
        loggedInUserId = int.tryParse(userId);
      });
    } else {
      print("Error: Unable to fetch logged-in user's ID");
    }
  }

  Future<List<String>> _fetchPlayers(String filter) async {
    try {
      final response = await _playersService.getPlayers();
      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        players = data.cast<Map<String, dynamic>>();
        List<String> playerNames = players
            .map((player) => '${player['first_name']} ${player['last_name']}')
            .toList();
        if (filter.isNotEmpty) {
          playerNames = playerNames
              .where(
                  (name) => name.toLowerCase().contains(filter.toLowerCase()))
              .toList();
        }
        return playerNames;
      } else {
        throw Exception('Failed to load players');
      }
    } catch (e) {
      print('Error fetching players: $e');
      return [];
    }
  }

  @override
  void initState() {
    super.initState();
    _initializeUserId();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Notes'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
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
          Padding(
            padding:
                const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Expanded(
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Notes",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ElevatedButton.icon(
                              onPressed: () => _showAddNoteDialog(context),
                              icon: Icon(Icons.add, color: Colors.white),
                              label: Text(
                                "Add Note",
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepPurple,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Expanded(
                          child: ListView.builder(
                            itemCount: notes.length,
                            itemBuilder: (context, index) {
                              final note = notes[index];
                              return buildNoteItem(
                                title: note['title']!,
                                player: note['player']!,
                                description: note['description']!,
                              );
                            },
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

  Widget buildNoteItem({
    required String title,
    required String player,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.orange,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            'Player: $player',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 14,
            ),
          ),
          const Divider(
            color: Colors.white54,
          ),
        ],
      ),
    );
  }

  void _showAddNoteDialog(BuildContext context) {
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.grey[850],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: Text(
            'Add Note',
            style: TextStyle(color: Colors.white),
          ),
          content: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    labelText: 'Title',
                    labelStyle: TextStyle(color: Colors.white70),
                    filled: true,
                    fillColor: Colors.grey[800],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: descriptionController,
                  maxLines: 3,
                  decoration: InputDecoration(
                    labelText: 'Description',
                    labelStyle: TextStyle(color: Colors.white70),
                    filled: true,
                    fillColor: Colors.grey[800],
                    alignLabelWithHint: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 10),
                DropdownSearch<String>(
                  asyncItems: (String filter) => _fetchPlayers(filter),
                  onChanged: (String? value) {
                    if (value != null) {
                      final player = players.firstWhere((player) =>
                          '${player['first_name']} ${player['last_name']}' ==
                          value);
                      selectedPlayerId = player['user_id'];
                    }
                  },
                  dropdownDecoratorProps: DropDownDecoratorProps(
                    dropdownSearchDecoration: InputDecoration(
                      labelText: 'Select Player',
                      labelStyle: TextStyle(color: Colors.white70),
                      filled: true,
                      fillColor: Colors.grey[800],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  popupProps: PopupProps.menu(
                    showSearchBox: true,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancel', style: TextStyle(color: Colors.white)),
            ),
            ElevatedButton(
              onPressed: () async {
                final title = titleController.text;
                final description = descriptionController.text;

                if (loggedInUserId == null) {
                  print('Error: User ID not available');
                  return;
                }

                if (selectedPlayerId == null) {
                  print('Error: No player selected');
                  return;
                }

                try {
                  final response = await _notesService.createNote(
                    title: title,
                    description: description,
                    player_id: selectedPlayerId!,
                    coach_id: 1, // Coach ID is nullable
                    user_id: loggedInUserId!,
                  );

                  if (response.statusCode == 201) {
                    print("Note created successfully");
                  } else {
                    print("Failed to create note: ${response.body}");
                  }
                } catch (e) {
                  print("Error creating note: $e");
                }
                Navigator.of(context).pop();
              },
              child: Text(
                'Add Note',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
              ),
            ),
          ],
        );
      },
    );
  }
}
