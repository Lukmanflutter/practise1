double rate = 0.3;

class Uba {
  Uba(String account_name, double account_number, double account_balance) {
    this.account_balance = account_balance;
    this.account_number = account_number;
    this.account_name = account_name;
  }

  String account_name = "Eniola Adeniyi Lukman";
  double account_number = 7415202015;
  double account_balance = 0;

  creditAccount(int cash) {
    account_balance = cash + account_balance;
    print(" amount credited is: $cash");
  }

  debitAccount(int withdrawMoney) {
    if (withdrawMoney < account_balance) {
      print("amount withdraw is : $withdrawMoney");
      account_balance = account_balance - withdrawMoney;
    } else if (withdrawMoney > account_balance) {
      print("funds too low to perform this transaction");
    }
  }

  getInfo() {
    print("${account_name}");
    print("$account_number");
    print('$account_balance');
  }

  nextYear() {
    double myGain = account_balance;
    double interest = (rate * 1 * myGain) / 100;
    print("your interest is $interest");
    account_balance = (interest) + account_balance;
    double totalCash = myGain + interest;
    print("my gain is $totalCash");
  }
}

void main() {
  Uba bankId = Uba("Eniola Adeniyi Lukman ", 7415202015, 0);
  bankId.getInfo();
  bankId.creditAccount(10000);
  bankId.getInfo();
  bankId.creditAccount(2500);
  bankId.getInfo();
  bankId.creditAccount(20000);
  bankId.getInfo();
  bankId.debitAccount(70000);
  bankId.getInfo();
  bankId.creditAccount(1);
  bankId.getInfo();
  bankId.nextYear();
  bankId.creditAccount(10000);
  bankId.getInfo();
  bankId.nextYear();
  bankId.debitAccount(100000);
  bankId.getInfo();
  bankId.debitAccount(10000);
  bankId.getInfo();
}
