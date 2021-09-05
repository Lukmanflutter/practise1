import 'dart:io';
import 'dart:math';

String prompt(String promptText) {
  print("the prompt is ${promptText}");
  String Answer = stdin.readLineSync() ?? '';
  return Answer;


}

double promptDouble() {
  print("print Enter a number:");

  double? mynum = double.tryParse( stdin.readLineSync() ?? "0"  );
  return mynum ?? 0;
}

main() {



  double num1 = promptDouble();
  double num2 = promptDouble();
  String? opra = prompt("Enter an operation(+,/,-,*)");
  if (opra == '+') {
    print(num1 + num2);
  } else if (opra == '/') {
    print(num1 / num2);
  } else if (opra == "-") {
    print(num1 - num2);
  } else if (opra=="*"){
    print(num1 * num2);
  }else{
    print("invalid operation");
  }
}
