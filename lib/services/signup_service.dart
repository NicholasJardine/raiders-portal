// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class AuthService {
//   Future<void> signUp(String email, String password, String role) async {
//     final url = Uri.parse(
//         'http://raiders-player-tracking.af-south-1.elasticbeanstalk.com/api/signup'); // Replace with your API URL

//     try {
//       final response = await http.post(
//         url,
//         headers: {
//           'Content-Type': 'application/json',
//         },
//         body: jsonEncode({
//           'email': email,
//           'user_password': password,
//           'role': role,
//         }),
//       );

//       if (response.statusCode == 200) {
//         final responseData = jsonDecode(response.body);
//         print('Signup successful: $responseData');
//       } else {
//         print('Signup failed: ${response.body}');
//       }
//     } catch (error) {
//       print('Error during signup: $error');
//     }
//   }
// }

import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  Future<http.Response> signUp(
      String email, String password, String role) async {
    final url = Uri.parse(
        'http://raiders-player-tracking.af-south-1.elasticbeanstalk.com/api/signup'); // Replace with your API URL

    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'email': email,
          'user_password': password,
          'role': role,
        }),
      );

      return response; // Return the response for handling outside this function
    } catch (error) {
      print('Error during signup: $error');
      // Return a response-like object with an error code if needed
      return http.Response('{"message": "Error during signup"}', 500);
    }
  }
}
