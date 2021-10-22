import 'dart:io';

int mustlessThanZero(int val){
  if (val >0){
    throw Exception("valur must be less than zero");
  }return val;
}
void verifyValue(int val){
  var verifiedValue;

   try{
     verifiedValue=mustlessThanZero(val);


   }
   catch (e){
     print(e);
   }
   finally{
     if (verifiedValue==null){
       print("value not verified");
     }else{
       print("value verified:$verifiedValue");
     }
  }
}
 String? userInput(String type){
  print(type);
  String amuda = stdin.readLineSync() ??"" ;
  print("my name is ${amuda}");
  return amuda;


}
void main(){
  verifyValue(30);
  verifyValue(-8);
 // var question= "what is your name";
  userInput("what is your name");

}