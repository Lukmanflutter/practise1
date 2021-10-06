class Vehicle {
  String model;
  int year;
  Vehicle(this.model, this.year) {
    print(this.model);
    print(this.year);
  }
  void showOutPut() {
    print(model);
    print(year);
  }
}

class Car extends Vehicle {
  double price;
  Car(String model, int year, this.price) : super(model, year);
  void showOutPUT() {
    super.showOutPut();
    print(this.price);
  }
}

main() {}
