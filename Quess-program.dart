import 'dart:io';

String? promp( String promptText ){
 print(promptText);
 String? answer = stdin.readLineSync();
 return answer;
}


double promptDouble(String?  promtText){
 print(promtText );
 double?   mynum =double.tryParse(stdin.readLineSync() ?? "0");
          return mynum ?? 0;
}



class mathquestion{
  String? question;
  double? Answer;

  mathquestion(String aquestion, double aAnswer){
    this.question = aquestion;
    this.Answer = aAnswer;
}   

}



void main(){
  List<mathquestion> questions= [
  mathquestion("5+3", 8),
  mathquestion("4-8", -4),
  mathquestion("3+6",9)
  ];
  int userScore =0;

  for(mathquestion mquestion  in questions){
   double UserAnswer = promptDouble(mquestion.question);
   if(UserAnswer == mquestion.Answer){
     userScore++;
   }
  }
  print("you got ${userScore/questions.length*100}");


}