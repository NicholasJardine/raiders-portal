// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// class PlayersService {
//   final _storage = FlutterSecureStorage();

//   // Retrieve token from secure storage
//   Future<String?> getToken() async {
//     return await _storage.read(key: 'auth_token');
//   }

//   // Create Profile function
//   Future<http.Response> getPlayers() async {
//     final token = await getToken();
//     if (token == null) {
//       throw Exception('Token not found'); // Handle missing token scenario
//     }

//     final url = Uri.parse(
//         'http://raiders-player-tracking.af-south-1.elasticbeanstalk.com/api/players'); // Update with your actual API URL

//     final response = await http.get(
//       url,
//       headers: {
//         'Content-Type': 'application/json',
//         'Authorization':
//             'Bearer $token', // Include token in Authorization header
//       },
//     );

//     return response;
//   }
// }

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class PlayersService {
  final _storage = FlutterSecureStorage();

  // Retrieve token from secure storage
  Future<String?> getToken() async {
    return await _storage.read(key: 'auth_token');
  }

  // Function to fetch players from API
  Future<http.Response> getPlayers() async {
    final token = await getToken();
    if (token == null) {
      throw Exception('Token not found'); // Handle missing token scenario
    }

    final url = Uri.parse(
        'http://raiders-player-tracking.af-south-1.elasticbeanstalk.com/api/players');

    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode != 200) {
      throw Exception(
          'Failed to load players. Status Code: ${response.statusCode}');
    }

    return response;
  }

  Future<Map<String, dynamic>> getPlayerById(String id) async {
    final token = await getToken();
    if (token == null) {
      throw Exception('Token not found');
    }

    final url = Uri.parse(
        'http://raiders-player-tracking.af-south-1.elasticbeanstalk.com/api/playersbyid?id=$id'); // Update with your actual player profile URL

    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else if (response.statusCode == 404) {
      throw Exception('Player not found');
    } else if (response.statusCode == 401 || response.statusCode == 403) {
      throw Exception('Unauthorized access');
    } else {
      throw Exception('Failed to load player profile');
    }
  }
}
