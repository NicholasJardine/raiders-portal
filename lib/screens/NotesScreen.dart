import 'dart:ui';
import 'package:flutter/material.dart';

class NotesScreen extends StatelessWidget {
  NotesScreen({Key? key}) : super(key: key);

  // Sample list of notes
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Same background color
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Notes'),
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
                const SizedBox(height: 20), // Space between app bar and content

                // Notes List Section
                Expanded(
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build each note item
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
              color: Colors.orange, // Orange color for note title
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            'Player: $player',
            style: const TextStyle(
              color: Colors.white, // White color for player name
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.white70, // Lighter white for description
              fontSize: 14,
            ),
          ),
          const Divider(
            color: Colors.white54, // Divider between notes
          ),
        ],
      ),
    );
  }
}
