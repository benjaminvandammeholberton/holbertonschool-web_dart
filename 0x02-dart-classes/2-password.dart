class Password {
  String password = '';

  bool isValid(){
    RegExp regexp = RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9]).{8,16}$');
    return regexp.hasMatch(password);
  }

  @override
  String toString(){
    return 'Your Password is: $password';
  }
}