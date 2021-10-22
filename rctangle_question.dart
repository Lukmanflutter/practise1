import 'dart:math' as colman;

class SimulateRectangle {
  SimulateRectangle(this.length, this.breadth, this.total);

  double length;
  double breadth;
  double total;

  modelRectangle() {
    var b = (length + breadth);
    var c = -(total - breadth * length);
    var bbb = (b * b) - (4 * 1 * c);
    var bbbb = colman.sqrt(bbb);
    var d = ((-b) + bbbb) / (2 * 1);
    var e = ((-b) - bbbb) / (2 * 1);
    if (d > 1) {
      print(d);
    } else {
      print(e);
    }print(e);

  }
}

void main() {
  var totalModelling = SimulateRectangle(5, 12, 120);
  totalModelling.modelRectangle();
}
