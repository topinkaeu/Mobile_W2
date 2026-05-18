class Distance {
  final double meters;

  Distance.meters(this.meters);
  Distance.kms(double kilometers) : this.meters(kilometers * 1000);
  Distance.cms(double centimeters) : this.meters(centimeters / 100);

  get kms => meters / 1000;
  get cms => meters * 100;

  Distance operator +(Distance other) {
    return Distance.meters(this.meters + other.meters);
  }
}

void main() {
  Distance d1 = Distance.kms(1.5);
  Distance d2 = Distance.meters(2000);
  print((d1 + d2).meters);
}
