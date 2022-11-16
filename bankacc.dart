import 'dart:io';

void main() {
  bankAccount bank = bankAccount(
      bankAccountNumber: BigInt.parse('0235750000000000'),
      accountType: 'Student',
      accountBalance: 3000);
  print('Enter 1 for withdraw and 2 for deposit');
  String? u;
  u = stdin.readLineSync();

  switch (u) {
    case '1':
      bank.withdraw();

      break;
    case '2':
      bank.deposit();
      break;
    default:
      print('Enter only 1 or 2');
      ;
  }
}

class bankAccount {
  final BigInt bankAccountNumber;
  final String accountType;
  num accountBalance;

  bankAccount(
      {required this.bankAccountNumber,
      required this.accountType,
      required this.accountBalance});

  withdraw() {
    num availableBalance;

    stdout.writeln('Enter your amount to be withdrawn');
    String? amt = stdin.readLineSync();
    if (amt != null) {
      int n = int.parse(amt);
      // print('Your withdrawn is $n');
      if (n < accountBalance) {
        availableBalance = accountBalance - n;
        print('Your available balance is $availableBalance');
      } else {
        print('Not sufficient balance');
      }
    }
  }

  deposit() {
    num availableBalance;

    stdout.writeln('Enter your deposited amount');
    String? amt = stdin.readLineSync();
    if (amt != null) {
      int n = int.parse(amt);
      availableBalance = accountBalance + n;
      print('Your available balance is $availableBalance');
    }
  }
}
