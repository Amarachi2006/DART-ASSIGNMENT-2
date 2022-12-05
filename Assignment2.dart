import 'dart:io';
import 'dart:math';
void main() {

  Interest calculate = Interest();

  print("Enter Principal ");
  calculate.principal = double.parse(stdin.readLineSync()!);
  
  print("Enter Rate");
  calculate.rate = double.parse(stdin.readLineSync()!);
  

  print("Enter Time");
  calculate.time = double.parse(stdin.readLineSync()!);

  print("Simple Interest = ");
  print(calculate.calcInterest());

  compoundInterest calc =compoundInterest();

  print("Enter Principal :");
  calc.principal = double.parse(stdin.readLineSync()!);

  print("Enter rate");
  calc.rate = double.parse(stdin.readLineSync()!);

  print("Enter Time:");
  calc.time = double.parse(stdin.readLineSync()!);

  print("Compound Interest =");
  
  print(calc.compounInterest());

  


  
}

class Interest {
    double? principal;
    double? rate;
    double? time;

    double calcInterest() {
      return (principal!*rate!*time!)/100; 
    }
  }

  class compoundInterest {
    double? principal;
    double? rate;
    double? time;

    double compounInterest() {
      return principal! * pow((1 + rate!) /100, time!);
    }

    
  }