class Password {
  String _password;

  Password({required password}) : _password = password;

  String get password {
    return _password;
  }

  set password(String password){
    _password = password;
  }

  bool isValid(){
    RegExp regexp = RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9]).{8,16}$');
    return regexp.hasMatch(_password);
  }

  @override
  String toString(){
    return 'Your Password is: $_password';
  }
}