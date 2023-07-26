
import 'dart:io';
import 'dart:math';

String validityStatus = "", type = "", cardNumber = "";

void main(){

  stdout.write("Enter Your Card Number for Validity Check: ");
  var userEntry = stdin.readLineSync();

  cardNumber = userEntry ?? "";
  cardTypeDetector(userEntry ?? "");
  cardValidator(userEntry ?? "");

  print("*"*40);
  stdout.write("Credit Card Type: ${type}" + "\nCredit Card Number: ${cardNumber}" +
  "\nCredit Card Length: ${cardNumber.length}" +
      "\nCredit Card Validity Status: ${validityStatus}\n");
  print("*"*40);
}

bool isCardValid(){
  if(cardNumber.length >= 13 && cardNumber.length<= 16){
    return true;
  }
  return false;
}

void cardTypeDetector(String cardNumber){
  
  if (isCardValid()){
    if (cardNumber.startsWith("4")) type = "Visa Card";
    else if (cardNumber.startsWith("5")) type = "Master Card";
    else if (cardNumber.startsWith("37")) type = "American ExpressCard";
    else if (cardNumber.startsWith("6")) type = "Discover Card";
    else type = "Invalid Type";
  }
  else{
    type = "Invalid Type";
  }
  
}

void cardValidator(String cardNUmber){
  cardNumber = cardNUmber;
  if(isCardValid()){

    int evenTotal = 0, oddTotal = 0;
    for (int counter = 0; counter < cardNUmber.length; counter++){
      
      if (counter%2 == 0){
        int digit = int.parse(cardNUmber[counter]);

        if (digit*2 >= 10) {evenTotal += ((digit*2 % 10) + ((digit*2 ~/10)));}
        else {evenTotal += digit*2;}
      }
      else {
        int digit = int.parse(cardNUmber[counter]);
        oddTotal += digit;
      }
    }
    
    int total = evenTotal + oddTotal;
   
    if(total % 10 == 0){
      validityStatus = "Valid";
    }
    else{validityStatus = "Invalid";}
    
  }else {
    validityStatus = "Invalid";
  }
}