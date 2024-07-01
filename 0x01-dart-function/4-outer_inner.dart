void outer(String name, String id){
  String inner(){
    var firstLetter = name.substring(0,1);
    var lastName = name.split(' ')[1];
    return('Hello Agent $firstLetter.$lastName your id is $id');
  }
  print(inner());
}