// 6-inheritance.dart

import '6-password.dart';

class User extends Password {
  String name;
  int age;
  double height;
  int id;
  String? user_password;

  User({
    required this.name,
    required this.age,
    required this.height,
    required this.id,
    String? user_password,
  }) : super(password: user_password!);

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      name: userJson['name'],
      age: userJson['age'],
      id: userJson['id'],
      height: userJson['height'],
      user_password: userJson['user_password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": this.id,
      "name": this.name,
      "age": this.age,
      "height": this.height,
    };
  }

  @override
  String toString() {
    return 'User(id : ${this.id} ,name: ${this.name}, age: ${this.age}, height: ${this.height}, ${super.toString()})';
  }
}
