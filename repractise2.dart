import 'dart:math';
import 'dart:io';
String? prompt(String promptext){
  print(promptext);
  String? Answer = stdin.readLineSync();
  return Answer;
}
double? promptdouble(String? promptext){
  print(promptext);
  double? number = double.tryParse(stdin.readLineSync() ?? "0");
  return number ?? 0;
}
class MathQuestion{
  String? question;
  double? answer;
  MathQuestion(String? aquestion, double? Aanswer ){
  this.question= aquestion;
  this.answer = Aanswer;
  }
}
main(){
  List <MathQuestion> questions = [
    MathQuestion("3+3", 6),
    MathQuestion("4+8", 12),
    MathQuestion("8-5", 3),
    MathQuestion("2+2", 4),
  ];
  int  score =0;
  for(MathQuestion n in questions){
    double? UserScore =promptdouble(n.question);
    if(UserScore==n.answer){
       score++;
    }
  }
  print("your score is ${score}/${questions.length}");

}