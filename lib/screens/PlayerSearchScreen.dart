import 'dart:ui';
import 'package:flutter/material.dart';

class PlayerSearchScreen extends StatefulWidget {
  @override
  _PlayerSearchScreenState createState() => _PlayerSearchScreenState();
}

class _PlayerSearchScreenState extends State<PlayerSearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<String> _players = [
    'John Smith',
    'Alex Johnson',
    'David Brown',
    'Michael White',
    'William Green',
    'James Black',
    'Chris Red',
    'Joshua Blue',
    'Andrew Gray'
  ];
  List<String> _filteredPlayers = [];

  @override
  void initState() {
    super.initState();
    _filteredPlayers = _players;
    _searchController.addListener(() {
      _filterPlayers();
    });
  }

  void _filterPlayers() {
    String query = _searchController.text.toLowerCase();
    setState(() {
      _filteredPlayers = _players
          .where((player) => player.toLowerCase().contains(query))
          .toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Search Players'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildSearchBar(),
            Expanded(
              child: _buildPlayerList(),
            ),
          ],
        ),
      ),
    );
  }

  // Search bar widget
  Widget _buildSearchBar() {
    return TextField(
      controller: _searchController,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[800],
        hintText: 'Search players...',
        hintStyle: TextStyle(color: Colors.white70),
        prefixIcon: Icon(Icons.search, color: Colors.white70),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
      ),
      style: TextStyle(color: Colors.white),
    );
  }

  // List of filtered players
  Widget _buildPlayerList() {
    return ListView.builder(
      itemCount: _filteredPlayers.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            _filteredPlayers[index],
            style: TextStyle(color: Colors.white),
          ),
          leading: Icon(Icons.person, color: Colors.orange),
          onTap: () {
            Navigator.pushNamed(context, '/player_stats');
            // Handle player tap here, navigate to player details, etc.
          },
        );
      },
    );
  }
}
