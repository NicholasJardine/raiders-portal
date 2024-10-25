import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthService {
  final _storage = FlutterSecureStorage();

  // Retrieve token from secure storage
  Future<String?> getToken() async {
    return await _storage.read(key: 'auth_token');
  }

  // Create Profile function
  Future<http.Response> createProfile({
    required String firstName,
    required String lastName,
    required int age,
    required String idOrPassportNumber,
    required double weight,
    required double height,
    required String position,
  }) async {
    final token = await getToken();
    if (token == null) {
      throw Exception('Token not found'); // Handle missing token scenario
    }

    final url = Uri.parse(
        'http://raiders-player-tracking.af-south-1.elasticbeanstalk.com/api/profile'); // Update with your actual API URL

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer $token', // Include token in Authorization header
      },
      body: jsonEncode({
        'first_name': firstName,
        'last_name': lastName,
        'age': age,
        'id_or_passport_number': idOrPassportNumber,
        'weight': weight,
        'height': height,
        'position': position,
      }),
    );

    return response;
  }
}
