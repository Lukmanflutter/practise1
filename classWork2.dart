/*EDIT THE FOLLOWING CLASS ONLY*/
import 'dart:math';

class Person {
  ///Create constructor that takes in a name and the age of this person
  Person (this.name,[this.age=0]);
  int age=0;
  String name;
  int moneyLeft=0;
  List <Person> friends = [];

  void addFriend(Person f) {
    ///write code to make [f] a friend to [this]
    this.friends.add(f);
    f.friends.add(this);
  }
  void birthday() {
    /// increment [this] persons age
    this.age= this.age +1;
  }

///write code for [earnMoney] function
//This function simulates [this] user getting more money
  earnMoney(int income){
    moneyLeft= income+moneyLeft;
}

///write code for  [giveFriendMoney] function
//This function simulates [this] user giving a friend money...
//THINK CAREFULLY ABOUT THE LOGIC HERE 😎
   giveFriendMoney(int expenses, Person friendToRecieveMney){
    if(expenses > moneyLeft){
      print('I dont have up to that kind of money');
    }
    else if (expenses < moneyLeft){
      moneyLeft= moneyLeft-expenses;
      friendToRecieveMney.earnMoney(expenses);
      // friendToRecieveMney.moneyLeft=friendToRecieveMney.moneyLeft+expenses;
     // friendToRecieveMney.earnMoney(expenses);

    }
  }


///write code for  [printFriends] function
// this methods should return [this] persons friend names seperated by space
// for example "Kelvin Lukman E1 Dave"

   String printFriends(){

    List<String?> _nameOfFriends = [];

    for(Person friend in this.friends){
      _nameOfFriends.add(friend.name);
    }

    var niyi = _nameOfFriends.join(" ");

    return niyi;

}


}


/*DO NOT TOUCH ANYTHING BELOW*/

void main() {
  final lukman = Person("lukman", 25);

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
  Tester._equal<int>(x: e1.moneyLeft, y: 400);
  Tester._equal<int>(x: lukman .moneyLeft, y: 1700);
  Tester._equal<String>(x: lukman.printFriends(), y: 'Steve E1');
  Tester._equal<int>(x: lukman.age, y: 28);
  Tester._equal<int>(x: david.age, y: 12);
  Tester._equal<int>(x: e1.moneyLeft, y: 400);
  Tester._equal<int>(x: lukman .moneyLeft, y: 1700);
}

class Tester  {
  static int tests = 0;

  static void _equal<T>({required T x, required T y}) {
    if (x != y) {
       throw '❌ => Expression: $x == $y failed';
    }

    tests++;

    print('✔ => Passed $tests test${tests < 2 ? '' : 's'}');
  }
}