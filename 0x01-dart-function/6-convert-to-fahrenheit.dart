import 'dart:math';

double rounded(double nb){
  var temp = nb * pow(10, 2);
  var tempRounded = temp.round();
  return tempRounded / pow(10, 2);
}

List<double> convertToF(List<double> temperaturesInC){
  var convertedT = temperaturesInC.map((temp) => rounded((temp * 9/5) + 32)).toList();
  return convertedT;
}
