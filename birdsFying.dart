void main() {
  var totalModelling = SimulateBirds();
  totalModelling.Model();
}

class SimulateBirds {
  SimulateBirds([this.birdComing = 1]);
  int numberOfBirdsGoing = 0;
  double birdComing;
  Model() {
    this.numberOfBirdsGoing = (200 - (2 * this.birdComing)) ~/ 3;

    print(
      "correct answer is: ${this.numberOfBirdsGoing},"
      "well done you have done well",
    );
  }
}
