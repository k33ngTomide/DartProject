
import 'dart:io';
import 'dart:math';

void main(){



  stdout.write("Enter the miles or enter -1 to stop: ");
  var miles = int.parse(stdin.readLineSync()!);

  var totalMiles = 0;
  var totalGallons = 0;

  while (miles != -1){
    stdout.write("Enter the gallons: ");
    var gallons = int.parse(stdin.readLineSync()!);

    totalMiles += miles;
    totalGallons += gallons;

    var milePerGallon = (miles)/gallons;
    print('The Miles per Gallon for this trip  = ${milePerGallon}');

    stdout.write("Enter the miles or enter -1 to stop: ");
    miles = int.parse(stdin.readLineSync()!);

  }

  var overallMilesPerGallon = (totalMiles)/totalGallons;
  print('The Overall Miles per Gallon = ${overallMilesPerGallon}');



}