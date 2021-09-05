import 'dart:io';

String? prompt ( String promptText){
  print ("you are to ${promptText}");
  String? godaddy = stdin.readLineSync();
  return godaddy;
}

 double Jet(){
  print("you are required to enter a number");
  double? godaddy2 = double.tryParse(stdin.readLineSync() ?? "0");
  return godaddy2 ??0;
}
main(){
    double num3 = Jet();
    double num4 =Jet();
    String? opr = prompt("pass in (-,+,/,*)");
    if (opr=="+"){
      print(num3 +num4);
      
    }else if (opr=="-"){
      print(num3-num4);
      
    }else if(opr=="/"){
      print(num3/num4);
      
    }else if (opr=="*"){
      print(num3*num4);
      
    }else{
      print("invalid operation");
    }

    
}