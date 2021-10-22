import 'dart:io';
main(){
  /*stdout.writeln("what is your name");
  String? name = "ade";
  print("my name is : ${name}");
  var s1 = '"this is a bookand i '
      'will buy more for you '
      'and daddymummy""';
  print(s1);
  String name1 = 1.toString();
  assert(name1=="1");
  String name2 = 3.142.toStringAsFixed(2);
  assert(name2=="3.14");
*/
  var numbers= [1,2,3];
      for(var i = 0; i<numbers.length; ++i){
       print(numbers[i]);
      }
      for(var n in numbers){
        print(n);
      }
      numbers.forEach(myNum);

}
void myNum(num){
  print(num);
}