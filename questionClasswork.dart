/*EDIT THE FOLLOWING CLASS ONLY*/
class Person {
  ///Create constructor that takes in a name and the age of this person

  int age;
  String name;
  int moneyLeft;
  List<Person> friends;

  void addFriend(Person f) {
    ///write code to make [f] a friend to [this]
  }

  void birthday() {
    /// increment [this] persons age
  }

///write code for [earnMoney] function
//This function simulates [this] user getting more money

///write code for  [giveFriendMoney] function
//This function simulates [this] user giving a friend money...
//THINK CAREFULLY ABOUT THE LOGIC HERE 😎

///write code for  [printFriends] function
// this methos should print [this] persons friend names seperated by space
// for example "Kelvin Lukman E1 Dave"

}

/*DO NOT TOUCH ANYTHING BELOW*/

void main() {
  final lukman = Person('Lukman', 25);

  final steve = Person('Steve', 25);

  final e1 = Person('E1', 25);

  final david = Person('David', 12);

  lukman.addFriend(steve);
  lukman.birthday();
  lukman.birthday();
  lukman.addFriend(e1);

  lukman.birthday();

  lukman.earnMoney(2000);
  e1.birthday();

  lukman.giveFriendMoney(300, e1);
  lukman.giveFriendMoney(200, steve);

  e1.earnMoney(300);
  e1.giveFriendMoney(200, lukman);
  david.addFriend(steve);

  Tester._equal<int>(x: david.friends.length, y: 1);
  Tester._equal<int>(x: steve.friends.length, y: 2);
  Tester._equal<int>(x: lukman.friends.length, y: 2);
  Tester._equal<String>(x: lukman.printFriends(), y: 'Steve E1');
  Tester._equal<int>(x: lukman.age, y: 28);
  Tester._equal<int>(x: david.age, y: 12);
  Tester._equal<int>(x: e1.moneyLeft, y: 500);
  Tester._equal<int>(x: lukman.moneyLeft, y: 1700);
}

class Tester {
  static int tests = 0;

  static void _equal<T>({required T x, required T y}) {
    if (x != y) {
      throw '❌ => Expression: $x == $y failed';
    }

    tests++;

    print('✔ => Passed $tests test${tests < 2 ? '' : 's'}');
  }
}