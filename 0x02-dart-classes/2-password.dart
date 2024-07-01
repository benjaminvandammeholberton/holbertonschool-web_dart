class Password{
  var password;

  bool isValid() {
  
  final RegExp regex = RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9]).{8,16}$');
  return regex.hasMatch(this.password);

  }

  @override
  String toString(){
    return "Your Password is: ${this.password}";
  }
}