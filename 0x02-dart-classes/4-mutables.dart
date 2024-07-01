class Password{
  String _password;

  String get password {
    return this._password;
  }

  void set password(String password){
    this._password = password;
  }

  Password({required String password}) : _password = password;

  bool isValid(){
    RegExp regex = RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9]).{8,16}$');
    return regex.hasMatch(this._password);
  }

  @override
  String toString(){
    return "Your Password is: ${this._password}";
  }

}