// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class AuthService {
//   Future<void> login(String email, String password) async {
//     final url = Uri.parse(
//         'http://raiders-player-tracking.af-south-1.elasticbeanstalk.com/api/login'); // Replace with your API URL

//     try {
//       final response = await http.post(
//         url,
//         headers: {
//           'Content-Type': 'application/json',
//         },
//         body: jsonEncode({
//           'email': email,
//           'user_password': password, // Adjust field names as necessary
//         }),
//       );

//       if (response.statusCode == 200) {
//         final responseData = jsonDecode(response.body);
//         final token = responseData['token'];
//         final role = responseData['role'];

//         // Handle token and role (store, print, etc.)
//         print('Login successful, token: $token, role: $role');
//       } else {
//         print('Login failed: ${response.body}');
//       }
//     } catch (error) {
//       print('Error during login: $error');
//     }
//   }
// }

// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class AuthService {
//   Future<http.Response> login(String email, String password) async {
//     final url = Uri.parse(
//         'http://raiders-player-tracking.af-south-1.elasticbeanstalk.com/api/login'); // Replace with your API URL

//     try {
//       final response = await http.post(
//         url,
//         headers: {
//           'Content-Type': 'application/json',
//         },
//         body: jsonEncode({
//           'email': email,
//           'user_password': password, // Adjust field names as necessary
//         }),
//       );

//       if (response.statusCode == 200) {
//         final responseData = jsonDecode(response.body);
//         final token = responseData['token'];
//         final role = responseData['role'];

//         // Handle token and role (store, print, etc.)
//         print('Login successful, token: $token, role: $role');
//       } else {
//         print('Login failed: ${response.body}');
//       }

//       return response; // Return the response for further handling
//     } catch (error) {
//       print('Error during login: $error');
//       rethrow; // Rethrow the error so it can be handled in the calling function
//     }
//   }
// }

// import 'dart:convert';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:http/http.dart' as http;

// class AuthService {
//   final _storage = FlutterSecureStorage();

//   // Store the token securely
//   Future<void> saveToken(String token) async {
//     await _storage.write(key: 'auth_token', value: token);
//   }

//   // Retrieve the token
//   Future<String?> getToken() async {
//     return await _storage.read(key: 'auth_token');
//   }

//   // Remove the token (e.g., on logout)
//   Future<void> deleteToken() async {
//     await _storage.delete(key: 'auth_token');
//   }

//   Future<http.Response> login(String email, String password) async {
//     final url = Uri.parse(
//         'http://raiders-player-tracking.af-south-1.elasticbeanstalk.com/api/login');

//     try {
//       final response = await http.post(
//         url,
//         headers: {
//           'Content-Type': 'application/json',
//         },
//         body: jsonEncode({
//           'email': email,
//           'user_password': password,
//         }),
//       );

//       if (response.statusCode == 200) {
//         final responseData = jsonDecode(response.body);
//         final token = responseData['token'];

//         // Save the token securely
//         await saveToken(token);
//       }

//       return response; // Return the response to handle status in your UI
//     } catch (error) {
//       throw Exception('Error during login: $error');
//     }
//   }
// }

import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class AuthService {
  final _storage = FlutterSecureStorage();

  // Store the token securely
  Future<void> saveToken(String token) async {
    await _storage.write(key: 'auth_token', value: token);
  }

  // Retrieve the token
  Future<String?> getToken() async {
    return await _storage.read(key: 'auth_token');
  }

  // Remove the token on logout
  Future<void> deleteToken() async {
    await _storage.delete(key: 'auth_token');
  }

  // Login function
  Future<http.Response> login(String email, String password) async {
    final url = Uri.parse(
        'http://raiders-player-tracking.af-south-1.elasticbeanstalk.com/api/login');

    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'email': email,
          'user_password': password,
        }),
      );

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        final token = responseData['token'];

        // Save the token securely
        await saveToken(token);
      }

      return response; // Return the response to handle status in your UI
    } catch (error) {
      throw Exception('Error during login: $error');
    }
  }

  // Logout function
  Future<void> logout() async {
    await deleteToken(); // Clear the stored token to log out the user
    print('User logged out successfully.');
  }
}
