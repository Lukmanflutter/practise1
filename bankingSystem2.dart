import 'dart:math';
import 'dart:io';

double rate = 0.3;

class BankAccount {
  BankAccount(
      String account_name, double account_number, double account_balance) {
    this.account_name = account_name;
    this.account_balance = account_number;
    this.account_balance = account_balance;
  }

  String account_name = "Eniola Adeniyi Lukman";
  double account_number = 7415202015;
  double account_balance = 0;

  void CreditAccount(double depositMoney) {
    account_balance = account_balance + depositMoney;
  }

  int? DebitAccount(double amountWidthraw) {
    if (amountWidthraw < account_balance) {
      account_balance = account_balance - amountWidthraw;
    } else if (amountWidthraw > account_balance) {
      print("insufficient funds to perform this transaction");
    }else {
      account_balance=account_balance+0;
    }
  }

  void GetInfo() {
    print("account-name: ${account_name}");
    print('account-number:${account_number}');
    print('account-balance: ${account_balance}');
  }

  void NextYear() {
    double interest = account_balance;
    account_balance = ((interest * rate * 1) / 100) + account_balance;
  }
}

void main() {
  BankAccount bankId = BankAccount("Eniola Adeniyi LUkman", 7415202015, 0);
  bankId.CreditAccount(4000);
  bankId.GetInfo();
  bankId.CreditAccount(6000);
  bankId.GetInfo();
}
