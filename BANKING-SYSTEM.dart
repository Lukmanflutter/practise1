import 'dart:math';
import 'dart:io';
double rate = 0.3;

class BankAccount{
 BankAccount (this.account_name,this.account_number,this.account_ballance);

 String  account_name;
 double account_ballance;
 double account_number;


 void creditAccount(double cash){
   account_ballance = account_ballance + cash;
  }


 void debitAccount(double amountWidthraw){
   if(amountWidthraw > account_ballance){
   print("insufficient balance to perform this transaction.");
  }else if(amountWidthraw<account_ballance) {
    account_ballance= account_ballance-amountWidthraw;
   }
  }

  void getInfo(){
    print("account-name: $account_name");
    print("account-number: $account_number");
    print("account-balance: ${account_ballance}");

  }
  void nextYear(){
   double currentBalance = account_ballance;
   account_ballance = ((currentBalance*rate*1)/100+account_ballance);
  }
}

main(){
 var bankId = BankAccount("Eniola Adeniyi lukman", 7415202015,10000);
bankId.getInfo();
bankId.creditAccount(10000);

bankId.getInfo();
bankId.debitAccount(2000);
bankId.getInfo();
bankId.nextYear();
bankId.nextYear();
bankId.getInfo();
bankId.debitAccount(50000);

}



