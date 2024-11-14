import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class NotesService {
  final _storage = FlutterSecureStorage();

  // Retrieve token from secure storage
  Future<String?> getToken() async {
    return await _storage.read(key: 'auth_token');
  }

  // Create Profile function
  Future<http.Response> createProfile({
    required String title,
    required String description,
    required int player_id,
    required int coach_id,
  }) async {
    final token = await getToken();
    if (token == null) {
      throw Exception('Token not found'); // Handle missing token scenario
    }

    final url = Uri.parse(
        'http://raiders-player-tracking.af-south-1.elasticbeanstalk.com/api/notes'); // Update with your actual API URL

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer $token', // Include token in Authorization header
      },
      body: jsonEncode({
        'title': title,
        'description': description,
        'player_id': player_id,
        'coach_id': coach_id,
      }),
    );

    return response;
  }
}
