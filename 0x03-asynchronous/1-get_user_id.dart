import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async{
  String userData = await fetchUserData();
  Map<dynamic, dynamic> userDataMap = json.decode(userData);
  return userDataMap["id"];
}
