import 'dart:math';
import 'dart:io';

   getInfo( double? salary) {
     print(" Enter the number of work per day:${salary}");
     double? wpd = double.tryParse(stdin.readLineSync()??"0");
     return salary ?? 0;
   }
AddSal(double wpd1 ){
     print(wpd1+10);
     double? salary1= double.tryParse(stdin.readLineSync()??"0");
     return salary1 ?? 0;
}

AddWork (double wpd2 ){
  print(wpd2+5);
  double? salary2= double.tryParse(stdin.readLineSync()??"0");
  return salary2 ?? 0;
}


main(){
  double salary = 0;
  if(salary){

  }

}