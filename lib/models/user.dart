import 'dart:convert';

class User {
  final String
      id; //not present in user schema in backend because mongodb creates it automatically;
  final String name;
  final String password;
  final String type;
  final String token;
  final String address;
  final String email;

  User({
    required this.id,
    required this.name,
    required this.password,
    required this.type,
    required this.token,
    required this.address,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'password': password,
      'address': address,
      'type': type,
      'token': token,
      'email': email,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['_id'] ?? '',
      name: map['name'] ?? '',
      password: map['password'] ?? '',
      type: map['type'] ?? '',
      token: map['token'] ?? '',
      address: map['address'] ?? '',
      email: map['email'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());
  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
