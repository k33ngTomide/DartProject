import 'dart:core';
import 'dart:io';

class Account{

  double balance =0;
  String accountNumber = "";
  String accountName = "";
  String pin ="";

  Account(String accountNumberGiven, String accountNameGiven, String pinGiven){
    accountNumber = accountNumberGiven;
    accountName = accountNameGiven;
    pin = pinGiven;
  }

  set deposit(double amount){
    balance = balance + amount;
  }

  double checkBalance(String pin){
    validatePin(pin);
    return balance;
  }

  set setName(String name){
    this.accountName = name;
  }

  String get getAccountName{
    return accountName;
  }
  String get getAccountNumber{
    return accountNumber;
  }

  void updatePin(String oldPin, String newPin){
    validatePin(oldPin);
    this.pin = newPin;
  }

  void validatePin(String oldPin){
    if(this.pin != oldPin) print("Incorrect Pin");
  }

  String getAccount(){
    return getAccountName + " " + getAccountNumber + " " + pin;
  }

}

void main(){
  Account account = new Account("0220190894", "Muiliyu Sodiq", "1244");
  print("The Name On this Account is : " + account.getAccountName);

  print("The Account Number is: " + account.getAccountNumber);
  print("The Full detail: " + account.getAccount());

  account.updatePin("3454", "1190");
  print("Account Detail After Changing Pin: " + account.getAccount());
}
