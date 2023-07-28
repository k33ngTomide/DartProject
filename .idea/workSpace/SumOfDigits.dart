
import 'dart:math';
import 'dart:io';

void main(){

  stdout.write("Enter a number:  ");
  var userEntry = int.parse(stdin.readLineSync()!);
  int processedDigit = separateDigit(userEntry);
  
  print("The sum of the digits in ${userEntry} = ${processedDigit}");
}

int separateDigit(int number){

  String newNumber = number.toString();
  int total = 0;
  for(int counter = 0; counter < newNumber.length; counter++){
    int digit = (number ~/ pow(10, counter)) % 10;

    total += digit;
  }

  return total;
}