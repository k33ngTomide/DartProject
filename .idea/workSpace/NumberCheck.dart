import 'dart:io';

void main(){

  print('Enter a number: ');
  int? checkNumber = int.parse(stdin.readLineSync()!);

  int total = 0;
  while(total <= checkNumber){

    stdout.write('Enter numbers to sum together: ');
    int? userInput = int.parse(stdin.readLineSync()!);

    total += userInput;

  }

  if (total >= checkNumber){
    print('Total of entry is now greather than ${checkNumber}.');
  } else {
    print('Total of entry is equal to ${checkNumber}');
  }

}

