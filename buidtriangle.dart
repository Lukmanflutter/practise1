import 'dart:math';
import 'dart:io';

/*
void DrawTriangle (int buid){

  for(int i=0; i<buid; i++){
    print("/_|");
  }
}

main(){
  DrawTriangle(3);

}

 */

/*
  class Book {
    Book( String atitle, String? author, int numpages){
      this.title = atitle;
      this.author =author;
      this.numpages = numpages;
    }



   String? title;
  String? author;
  int? numpages;
}
main() {
  Book hp = Book("harry potter", "jk rollings", 300);
  Book amir = Book("eleyinjuege", "habeeb olateju", 100);
  print(hp.title,);
  print(hp.author);
  print(hp.numpages);
  print(amir.numpages);
  print(amir.author);
  print(amir.title);

}

 */

 class Student{
  Student(String aname, double acgpa){
      this.name =aname ;
      this.cgpa= acgpa;
  }
  String? name;
  double? cgpa;
  bool hasHonors(){
    return this.cgpa!  >= 3.0;
  }
  
}
main(){
     Student Eniola= Student("eniola", 2.4);
     Student adeniyi = Student("adeniyi", 3.6);
     print(Eniola.hasHonors());
     print(adeniyi.hasHonors());


}











