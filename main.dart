
import 'dart:math';
import 'dart:io';
/*

main(){


  String firstName = 'jim';
  String age = "74";

  print("there is a man named ${firstName}");
  print ("he was ${age}years old");

   firstName = "lukman";
  print("he really liked the name ${firstName}");
  print("but didn;t like being ${age}");




}

 */
/*
main(){
 /* String  FirstName = "colman";
  int Age = 26;
  double cga= 3.5;
  bool IsRegisteredVoter= false;

  String greeting2 =" world";

  String greeting = "hello";
 //  print(
   //    greeting.indexOf("l"));
   /*print (greeting[4]);
   print (greeting.contains("7"));
   print( "the greeting is: ${greeting + greeting2}" );
   print("the greeting is: ${greeting}${greeting2}");
   */
 /* int quantity= 300;
  double price = 5.99;
   print(5*3);
   print(5+3 * (2+4-4+5));
   print(min (9,7));
   print(
     max(100,200)
   );
print(
  sqrt(64)
);*/
//print(5>3);

*/
print("what is your name?:");
String? UserName= stdin.readLineSync();
print(
  "hello ${UserName}"
);




}
*/
/*

main(){






 /* print("enter first number");
  String num1=stdin.readLineSync()  ?? '';
  print("enter second number");
  String ? num2=stdin.readLineSync() ?? '';
  print(int.parse(num1)* int.parse(num2));
*/
  print("enter first number ");
  num num1 = num.parse(stdin.readLineSync()?? '0') ;
  print("enter second number");
  num  num2 =num.parse(

      stdin.readLineSync()?? '0'

  );
  print(num2+num1);

}
*/
//void sayHi(String username, int Age ){
 //   print("hi ${username}, you are ${Age}");
//}
String? prompt(String promptText){
  print("the prompt is:${promptText}");
  String? answer= stdin.readLineSync();
  return answer;

}





  void main(){
 /* print("Enter a color:");
  String? Color=stdin.readLineSync();
  print("Enter a plural noun");
  String? PluralNoun = stdin.readLineSync();
  print("Enter a celebrity");
  String? Celebrity = stdin.readLineSync();




  print("roses are ${Color}");
  print("${PluralNoun} are blue");
  print("i love ${Celebrity}");
*/
     //sayHi("Lukman", 38);
    // sayHi("damola",56);
     //sayHi('bolaji', 45);
    String? color= prompt("Enter a color:");
    String? pluralNouns = prompt("Enter a color:");
    String? Celebrity = prompt("Enter a celebrity:");
    





}




