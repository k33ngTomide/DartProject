import 'dart:io';

void main(){
  for(int index = 0; index <= 10; index++ ){
    for(int newIndex = 0; newIndex <= index; newIndex++)
      stdout.write("1");

    for(int newIndex = 0; newIndex <= 10 - index; newIndex++)
      stdout.write(" ");

    for(int newIndex = 0; newIndex <= 10 - index; newIndex++)
      stdout.write("3");

    for(int newIndex = 0; newIndex <= index; newIndex++)
      stdout.write(" ");

    for(int newIndex = 0; newIndex <= index; newIndex++)
      stdout.write(" ");

    for(int newIndex = 0; newIndex <= 10 - index; newIndex++)
      stdout.write("6");

    for(int newIndex = 0; newIndex <= 10 - index; newIndex++)
      stdout.write(" ");

    for(int newIndex = 0; newIndex <= index; newIndex++)
      stdout.write("8");

    print(" ");
  }
}