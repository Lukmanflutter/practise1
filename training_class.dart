class Person {
  String name = "";
  int age = 0;
  Person(this.name, {this.age: 26});

  Person.guest() {
    name = "Ambali Olaleye Akintunde";
    age = 50;
  }
  void showOutput() {
    print(name);
    print(age);
  }
}

void main() {
  Person person1 = Person("Eniola Adeniyi Lukman", age: 40);
  person1.showOutput();
  var person2 = Person("Eniola Ayorinde Medinat");
  person2.showOutput();
  Person person3 = Person.guest();
  person3.showOutput();
}
