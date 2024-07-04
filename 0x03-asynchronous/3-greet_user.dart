import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
  
  try {
    String userData = await fetchUserData();
    Map<dynamic, dynamic> userDataMap = json.decode(userData);
    return 'Hello ${userDataMap['username']}';

  } catch(error){
    throw 'error caught $error';
  }

}

Future<String> loginUser() async {
  try {
    bool isLogin = await checkCredentials();
    if (isLogin) {
      print('There is a user: true');
      return await greetUser();
    } else {
      print('There is a user: false');
      return 'Wrong credentials';
    } 
  } catch(error) {
     return ('error caught $error');
  }
}