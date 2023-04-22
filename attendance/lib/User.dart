import 'dart:convert';
import 'package:http/http.dart' as http;

class User {
  final int id;
  final String username;
  final String email;
  final String tel;
  final String password;
  final int role;
  final String profile;
  final bool emailVerified;
  final bool telVerified;
  final DateTime createdAt;
  final DateTime updatedAt;

  User({
    required this.id,
    required this.username,
    required this.email,
    required this.tel,
    required this.password,
    required this.role,
    required this.profile,
    required this.emailVerified,
    required this.telVerified,
    required this.createdAt,
    required this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: int.parse(json['id']),
      username: json['username'],
      email: json['email'],
      tel: json['tel'],
      password: json['password'],
      role: int.parse(json['role']),
      profile: json['profile'],
      emailVerified: json['email_verified'] ?? false,
      telVerified: json['tel_verified'] ?? false,
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }
}

Future<void> main() async {
  try {
    final response = await http.get(Uri.parse('http://localhost:3000/api/user/22'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final userData = data['userData'][0];
      final user = User.fromJson(userData);

      print(user.username); // prints "avishka"
    } else {
      throw Exception('Failed to connect to server');
    }
  } catch (e) {
    print('An error occurred: $e');
  }
}
