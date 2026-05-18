class Point {
  int x = 0;
  int y = 0;

  Point({required this.x, required this.y}) {}

  void translate(int deltaX, int deltaY) {
    //TODO
    x += deltaX;
    y += deltaY;
  }

  @override
  String toString() {
    return "X = $x, Y = $y";
  }
}

class Rectangle {
  Point TopLeft;
  Point BottomRight;
  Rectangle({required this.BottomRight, required this.TopLeft});

  int Width() {
    return BottomRight.x - TopLeft.x;
  }

  int Height() {
    return TopLeft.y - BottomRight.y;
  }

  int Area() {
    return Width() * Height();
  }

  @override
  String toString(){
    return "Rectangle Info: Width = ${Width()}, Height = ${Height()}, Area = ${Area()} m*2";
  }
  }


void main() {
  Point p1 = Point(x: 10, y: 20);
  print(p1);
  p1.translate(1, 2);
  print(p1);

  Rectangle r1 = Rectangle(BottomRight: Point(x: 8, y: 2), TopLeft: Point(x: 3, y: 10));
  print(r1);
}
