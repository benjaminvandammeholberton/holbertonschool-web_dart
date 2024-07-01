class Password{
  String _password;

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