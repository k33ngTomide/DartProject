import "dart:math";
import "dart:io";


void main(){

  stdout.write("Enter the value of a: ");
  double? a = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the value of b: ");
  double? b = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the value of c: ");
  double? c = double.parse(stdin.readLineSync()!);

  double newNumber = sqrt((b*b) - (4 * a * c));

  double r1 = (-b + newNumber) / (2*a);
  print('x1 = ${r1}');

  double r2 = (b + newNumber)/ (2*a);
  print('x2 = ${r2}');
}