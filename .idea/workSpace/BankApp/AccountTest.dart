import 'dart:io';
import 'Account.dart';


// class AccountTest{

void main(){
  Account account = new Account(5000, "Ogechukwu David", "3454");
  stdout.write(account.getAccountName());

  print(account.getAccountName());
  print(account.getAccount());

  account.updatePin("3454", "1190");
  stdout.write(account.getAccount());
}

// }