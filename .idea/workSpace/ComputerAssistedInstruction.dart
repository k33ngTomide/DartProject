import 'dart:io';
import 'dart:math';


int firstQuestion = 0;
int secondQuestion = 0;

void main(){
  print('Hi, welcome');

  stdout.write('Enter your name: ');
  String? name = stdin.readLineSync();

  print('Dear ${name}, Welcome.');
  questions();
}

void questions() {
  Random random = new Random();
  firstQuestion = random.nextInt(10);
  secondQuestion = random.nextInt(10);
  savedQuestion();
}

void savedQuestion(){
  print('How many is ${firstQuestion} + ${secondQuestion}: ');
  int? userAnswer = int.parse(stdin.readLineSync()!);

  int realAnswer = firstQuestion + secondQuestion;

  if (userAnswer == realAnswer){
    print('Weldone, Very good');
    questions();
  }
  else{
    print('Very close, try again!!');
    savedQuestion();
  }

}
