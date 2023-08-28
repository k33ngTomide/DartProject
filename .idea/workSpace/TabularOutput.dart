
import 'dart:io';
import 'dart:math';


void main(){

  int count = 1;
  int counter = 1;

  while(count < 6){
    while (counter < 6){
      stdout.write(pow(count,counter));
      stdout.write("\t\t\t");
      counter+=1;
    }
    count+=1;
    counter = 1;
    print('');
  }
}