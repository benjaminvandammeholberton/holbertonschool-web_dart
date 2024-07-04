import '2-util.dart';

Future<void> getUser() async{
  try {
    await fetchUser();
  } catch(error){
    print("error cought: $error");
  }
}