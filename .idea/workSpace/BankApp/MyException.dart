import 'dart:io';

class IncorrectPinException(Exception){

  IncorrectPinException(String message){
  super(message);
  }
}