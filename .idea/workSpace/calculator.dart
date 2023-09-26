import 'dart:io';
import 'dart:math';


void main(){

  stdout.write("Enter first Number: ");
  var left_oper = stdin.readLineSync() ?? "";

  stdout.write("What do you want to do with the numbers? \nEnter '+' to plus "
      "\n '-' to minus \n'*' to multiply "
      "\n'/' to divide \n'%' to get remainder. "
      "\nEnter: ");
  var operator = stdin.readLineSync() ?? "";

  stdout.write("Enter second Number: ");
  var right_oper = stdin.readLineSync() ?? "";

  int left_operand = int.parse(left_oper);
  int right_operand = int.parse(right_oper);

  switch (operator){
    case "+": { stdout.write(left_operand + right_operand); break;}
    case "-": { stdout.write(left_operand - right_operand); break;}
    case "*": { stdout.write(left_operand * right_operand); break;}
    case "/": { stdout.write(left_operand / right_operand); break;}
    case "%": { stdout.write(left_operand % right_operand); break;}
  }




}