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
      id: int.parse(json['userData']['id']),
      username: json['userData']['username'],
      email: json['userData']['email'],
      tel: json['userData']['tel'],
      password: json['userData']['password'],
      role: int.parse(json['userData']['role']),
      profile: json['userData']['profile'],
      emailVerified: json['userData']['email_verified'] ?? false,
      telVerified: json['userData']['tel_verified'] ?? false,
      createdAt: DateTime.parse(json['userData']['createdAt']),
      updatedAt: DateTime.parse(json['userData']['updatedAt']),
    );
  }
}
