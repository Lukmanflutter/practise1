
import 'dart:io';
import 'dart:math';




String? prompt( String promptText){
  print(promptText);
  String? answer = stdin.readLineSync();
  return answer;
}
double promptdouble(String? promptText){
  print("solve ${promptText}");
  double?  muNum = double.tryParse(stdin.readLineSync()?? "0");
  return muNum ?? 0;
}

class mathquestion{
  String? question;
  double? Answer;
mathquestion( String? aQuestion, double? aAnswer){
  this.question = aQuestion;
  this.Answer = aAnswer;

}

}

main(){
  List <mathquestion> questions = [
    mathquestion("2+6", 8),
    mathquestion("3*4", 12),
    mathquestion("9-5-1", 3),

  ];
  int  score =0;
  for(mathquestion n in questions){
    double?  UserAnswer = promptdouble(n.question);

    if (UserAnswer == n.Answer){
       score++;
    }

  }
  print("you got ${score}/3");


}