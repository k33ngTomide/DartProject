import 'dart:io';
import 'dart:math';


void main(){

  print('Enter the Points X1, X2, Y1, Y2: ' );
  double? point1 = double.parse(stdin.readLineSync()!);
  double? point2 = double.parse(stdin.readLineSync()!);
  double? point3 = double.parse(stdin.readLineSync()!);
  double? point4 = double.parse(stdin.readLineSync()!);

  double simpleDistance = calculate(point1, point2, point3, point4);

  print('The distance between the given points is: ${simpleDistance} ');
}

double calculate(double x1, double x2, double y1, double y2){

  double firstDistance = y2 - y1;
  double secondDistance = x2 - x1;


  double distance = firstDistance / secondDistance;
  return distance;
}