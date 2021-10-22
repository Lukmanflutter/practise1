import 'dart:math';
import 'dart:io';
String? promptext(String prompt){
  print(prompt);
  String? answer = stdin.readLineSync();
  return answer;
}
int? promptdouble (String? prompt){
  print(prompt);
  int? mynumber = int.tryParse(stdin.readLineSync() ?? "0");
  return mynumber ?? 0;
}
class mathquestion {
  String? question;
  double? answer;
  mathquestion( String? aquestion , double? aAnswer){
    this.question = aquestion;
    this.answer = aAnswer;

  }
}
main(){
  List <mathquestion>
  questions=
     [mathquestion("3+3", 6),
       mathquestion("4-5", -1),
       mathquestion("6-5", 1),
  ];
    int score =0;
    for(mathquestion n in questions){
     int?   useranswer= promptdouble(n.question );
    if(useranswer== n.answer){
      score++;
    }

  }print("your score is ${score}/${questions.length}");
}
