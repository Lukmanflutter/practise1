double rate = 0.3;
class FirstBank{
   FirstBank(this.bankAccount, this.bankBalance,this.bankName);
  double bankAccount;
  double bankBalance;
  String bankName;
  //function to credit account
void creditAccount(double cash){
  print("$cash");
  bankBalance+=cash;
}
//function to withdraw money  account
void debitAccount(double withdrawMoney){
  print("$withdrawMoney");
  if(bankBalance>withdrawMoney){
    bankBalance=bankBalance-withdrawMoney;
  }else if (bankBalance<withdrawMoney){
    print("fund too low to perform this transaction");
  }
}
// this function is to get info of the user bank details
void getInfo(){
 print("$bankName");
 print("$bankBalance");
 print("$bankAccount");

}
//this function is to show user their interest rate at the end of the year
void endOfTheYear(){
  double principal=bankBalance;
  double interest = (principal*rate*1)/100;
  double moneygained= interest+bankBalance;
  print("your interest: $interest");
  print("money gained  at the end of the month is : $moneygained");
}
}
void main(){
  FirstBank abdulwasiu = FirstBank(7415202015, 0, "wasiu" );
  abdulwasiu.getInfo();
  abdulwasiu.creditAccount(10000);
  abdulwasiu.getInfo();
  abdulwasiu.debitAccount(50000);
  abdulwasiu.getInfo();
  abdulwasiu.creditAccount(20000);
  abdulwasiu.getInfo();
  abdulwasiu.debitAccount(5000);
  abdulwasiu.getInfo();
  abdulwasiu.endOfTheYear();

}