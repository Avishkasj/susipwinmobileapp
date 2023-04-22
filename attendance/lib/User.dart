class User {
  int id;
  String username;
  String email;
  String tel;
  String password;
  int role;
  String profile;
  bool emailVerified;
  bool telVerified;
  DateTime createdAt;
  DateTime updatedAt;

  User({
    required this.id,
    required this.username,
    required this.email,
    required this.tel,
    required this.password,
    required this.role,
    this.profile = '',
    this.emailVerified = false,
    this.telVerified = false,
    required this.createdAt,
    required this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      username: json['username'],
      email: json['emailIndex'],
      tel: json['telIndex'],
      password: json['password'],
      role: json['role'],
      profile: json['profile'] ?? '',
      emailVerified: json['email_verified'] ?? false,
      telVerified: json['tel_verified'] ?? false,
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'username': username,
    'emailIndex': email,
    'telIndex': tel,
    'password': password,
    'role': role,
    'profile': profile,
    'email_verified': emailVerified,
    'tel_verified': telVerified,
    'createdAt': createdAt.toIso8601String(),
    'updatedAt': updatedAt.toIso8601String(),
  };
}
