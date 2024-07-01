import 'dart:math';

double calculateArea(double height, double base){
  var area = (height * base) / 2;
  var temp = area * pow(10, 2);
  var tempRounded = temp.round();
  return tempRounded / pow(10, 2);
}