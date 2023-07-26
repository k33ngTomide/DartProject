import 'dart:io';

void main() {

  stdout.write('Enter the length of the triangle: ');
  int length = int.parse(stdin.readLineSync()!);

  triangle(length);

}

void triangle(int number){

  for (int counter = 0; counter <= number; counter++) {
    for (int newCounter = 0; newCounter < counter; newCounter++) {
      stdout.write('* ');
    }
    print('');
  }

}
