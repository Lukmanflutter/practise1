num rate = 0.3;

class wemaBank {
  wemaBank(this.accountName, this.accountBalance, this.accountNumber);

  String accountName;
  int accountBalance = 0;
  int accountNumber;
  creditAccount(int cash) {
    accountBalance = accountBalance + cash;
    print(" your account has been credited with :$cash");
    getInfo();
  }

  debitAccount(int withdrawMoney) {
    if (withdrawMoney > accountBalance) {
      print("funds too low to perform this transaction");
      getInfo();
    } else if (withdrawMoney < accountBalance) {
      accountBalance = accountBalance - withdrawMoney;
      print("your account has been debited with ${withdrawMoney}");
      getInfo();
    }
  }

  getInfo() {
    print("account name : ${accountName}");
    print("account number : $accountNumber");
    print("account balance :${accountBalance}");
  }

  nextYear() {
    num interest = (accountBalance * rate * 1) / 100;
    print("your interest is : $interest");
    num moneyGained = interest + accountBalance;
    print("total money gained is : $moneyGained");
    getInfo();
  }
}

main() {
  wemaBank customer = wemaBank("Eniola", 0, 7415202015);
  customer.creditAccount(5000);
  customer.debitAccount(1000000000);
  customer.creditAccount(7000000);
  customer.nextYear();
  customer.debitAccount(6000000);
  customer.creditAccount(500000);
}
