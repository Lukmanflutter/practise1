class Vehicle {
  String model;
  int year;
  Vehicle(this.model, this.year) {
    print(this.model);
    print(this.year);
  }
  void showOutput() {
    print(model);
    print(year);
  }
}

class Car extends Vehicle {
  double price;
  Car(String model, int year, this.price) : super(model, year);
  void endure() {
    super.showOutput();
    print(this.price);
  }
}

//learning setters and getters
class Rectangle {
  num left;
  num top;
  num width;
  num height;
  Rectangle(this.left, this.top, this.width, this.height);
  //define two calculated properties:right and bottom.
  num get right => left + width;
  set right(value) => left = value - width;
  num get bottom => top + height;
  set bottom(value) => top = value - height;
}

void main() {
  //var car1= Car("accord", 2014, 150000);
  //car1.endure();

  var rec = Rectangle(3, 4, 20, 15);
  // print(rec.left);
  // rec.right=12;
  // print(rec.left);
  //print(rec.top);
  // rec.bottom=20;
  // print(rec.top);
  //print(rec.width);
  //rec.right=34;
  //print(rec.left);
  var adekalu = rec.right + rec.bottom;
  print(rec.right);
  print(rec.bottom);
  print(adekalu);
}
