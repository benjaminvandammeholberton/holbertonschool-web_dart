class User {
  String name;
  int age;
  double height;
  int id;

  User({required this.name, required this.age, required this.height, required this.id});

  static User fromJson(Map<dynamic, dynamic> userJson){
    return User(name: userJson['name'], id: userJson['id'], height: userJson['height'], age: userJson['age']);
  }

  Map<String, dynamic> toJson(){
    return {
      'id': this.id,
      'name': this.name,
      'age': this.age,
      'height': this.height
    };
  }

  @override
  String toString(){
    return 'id : $id ,name: $name, age: $age, height: $height';
  }
}