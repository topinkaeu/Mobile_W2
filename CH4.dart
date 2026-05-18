class Point {
  final int x; //use final for immutable value
  final int y;

  Point({required this.x, required this.y}) {}
//change the variable
  Point translate(int deltaX, int deltaY) {
    //TODO
    return Point(x: x + deltaX, y: y + deltaY);
  }

  @override
  String toString() {
    return "X = $x, Y = $y";
  }
}
void main() {
  Point p1 = Point(x: 10, y: 20);
  print(p1);
  Point p2 = p1.translate(2, 3);
  print(p2);
}
