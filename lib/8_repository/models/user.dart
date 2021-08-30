import 'dart:convert';

import 'package:dart_async/7_modelos/user_types.dart';

class User {
  final String id;
  final String name;
  final String userName;
  final List<UserTypes> userTypes;
  User({
    required this.id,
    required this.name,
    required this.userName,
    required this.userTypes,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      userName: map['userName'] ?? '',
      userTypes: map['user_types']?.map<UserTypes>((type) {
            return UserTypes.fromMap(type);
          }).toList() ??
          <UserTypes>[],
    );
  }

  factory User.fromJson(String source) => User.fromMap(jsonDecode(source));

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'username': userName,
      'user_types': userTypes.map((e) => e.toMap()).toList(),
    };
  }

  String toJson() => jsonEncode(toMap());

  @override
  String toString() {
    return 'User(id: $id, name: $name, userName: $userName, userTypes: $userTypes)';
  }
}

// {
// id: "1",
// name: "Pasquale Wolff",
// username: "Luis_Ward64",
// user_types: [
// { 
// id: "1",
// userId: "1",
// nome: "Ms. Forrest Struman",
// }
// ]
// }
// 