import 'dart:math';
import 'dart:io';

String? prompt(String prompText){
  print("the prommpt is enter ${(prompText)}");
  String? userinput = stdin.readLineSync();
  return userinput;
}


double MyNUM(){
  print("Enter a number");
  double? UserInput2 = double.tryParse(stdin.readLineSync() ?? "0");
  return UserInput2 ?? 0;

}


main(){

  double num1 = MyNUM();
  double num2 = MyNUM();
  String? oprr = prompt("enter an operation(+,-,/,*)");
  if (oprr == '+'){
    print(num1+ num2);
  }else if (oprr == '-'){
    print(num1 - num2);
  }else if (oprr=="*"){
    print(num1*num2);
  }else if (oprr=="/"){
    print(num1/num2);

  }else{
    print ("invalid operation");

  }

 
}