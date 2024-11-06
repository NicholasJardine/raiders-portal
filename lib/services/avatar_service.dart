// import 'dart:convert';
// import 'dart:io';
// import 'package:http/http.dart' as http;
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:http_parser/http_parser.dart';
// import 'package:mime/mime.dart';

// class AvatarService {
//   final _storage = FlutterSecureStorage();

//   // Retrieve token from secure storage
//   Future<String?> getToken() async {
//     return await _storage.read(key: 'auth_token');
//   }

//   // Function to upload avatar
//   Future<Map<String, dynamic>> uploadAvatar(File imageFile) async {
//     final token = await getToken();
//     if (token == null) {
//       throw Exception('Token not found');
//     }

//     final url = Uri.parse(
//         'http://raiders-player-tracking.af-south-1.elasticbeanstalk.com/api/avatar-upload');

//     // Create Multipart request
//     var request = http.MultipartRequest('POST', url)
//       ..headers['Authorization'] = 'Bearer $token';

//     // Add the file to the request
//     final mimeType = lookupMimeType(imageFile.path);
//     request.files.add(await http.MultipartFile.fromPath(
//       'avatar',
//       imageFile.path,
//       contentType: mimeType != null ? MediaType.parse(mimeType) : null,
//     ));

//     // Send request and handle response
//     final streamedResponse = await request.send();
//     final response = await http.Response.fromStream(streamedResponse);

//     if (response.statusCode == 200) {
//       return jsonDecode(response.body);
//     } else if (response.statusCode == 401 || response.statusCode == 403) {
//       throw Exception('Unauthorized access');
//     } else {
//       throw Exception(
//           'Failed to upload avatar. Status Code: ${response.statusCode}');
//     }
//   }
// }

// import 'dart:io';
// import 'package:http/http.dart' as http;
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:http_parser/http_parser.dart';
// import 'package:mime/mime.dart';

// class AvatarService {
//   final _storage = FlutterSecureStorage();

//   Future<String?> getToken() async {
//     return await _storage.read(key: 'auth_token');
//   }

//   Future<http.Response> uploadAvatar(File imageFile) async {
//     final token = await getToken();
//     if (token == null) {
//       throw Exception('Token not found');
//     }

//     final url = Uri.parse(
//         'http://raiders-player-tracking.af-south-1.elasticbeanstalk.com/api/avatar-upload'); // Replace with your actual API endpoint

//     final mimeType = lookupMimeType(imageFile.path);
//     final request = http.MultipartRequest('POST', url)
//       ..headers['Authorization'] = 'Bearer $token'
//       ..files.add(await http.MultipartFile.fromPath(
//         'avatar',
//         imageFile.path,
//         contentType: mimeType != null ? MediaType.parse(mimeType) : null,
//       ));

//     final streamedResponse = await request.send();
//     return await http.Response.fromStream(streamedResponse);
//   }
// }

import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http_parser/http_parser.dart';
import 'package:mime/mime.dart';

class AvatarService {
  final _storage = FlutterSecureStorage();

  // Retrieve token from secure storage
  Future<String?> getToken() async {
    return await _storage.read(key: 'auth_token');
  }

  // Function to upload avatar image to the server
  Future<http.Response> uploadAvatar(File imageFile) async {
    final token = await getToken();
    if (token == null) {
      throw Exception('Token not found');
    }

    final url = Uri.parse(
        'http://raiders-player-tracking.af-south-1.elasticbeanstalk.com/api/avatar-upload');

    // Get the MIME type of the file
    final mimeType = lookupMimeType(imageFile.path);
    print('Uploading image with MIME Type: $mimeType');

    // Prepare the multipart request
    final request = http.MultipartRequest('POST', url)
      ..headers['Authorization'] = 'Bearer $token'
      ..files.add(await http.MultipartFile.fromPath(
        'avatar',
        imageFile.path,
        contentType: mimeType != null ? MediaType.parse(mimeType) : null,
      ));

    // Send the request and wait for a response
    final streamedResponse = await request.send();
    final response = await http.Response.fromStream(streamedResponse);

    // Check response status
    if (response.statusCode == 200) {
      print('Avatar uploaded successfully');
    } else {
      print('Failed to upload avatar');
      print('Status Code: ${response.statusCode}');
      print('Response Body: ${response.body}');
    }

    return response;
  }
}
