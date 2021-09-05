import 'dart:math';
import 'dart:io';
String? prompt( String promptText){
  print(promptText);
  String? answer = stdin.readLineSync();
  return answer;


}


main(){
String answer = "Eniola Adeniyi Lukman";
String guess = "";
int guessCount = 0;
while (guess != answer){
  guess = prompt("enter a guess") ?? "";
  guessCount++;
}
print("you won in ${guessCount} guess");

}