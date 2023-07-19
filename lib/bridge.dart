abstract class Shape {
  Color color;
  Shape(this.color);
  void drawShape();
}

class Circle extends Shape {
  Circle(Color color) : super(color);
  void drawShape() {
    print("Drawing Circle with ${color.fillColor}");
  }
}

class Square extends Shape {
  Square(Color color) : super(color);
  void drawShape() {
    print("Drawing Square with ${color.fillColor}");
  }
}

abstract class Color {
  late String fillColor;
}

class RedColor implements Color {
  @override
  String fillColor = "Red";
}

class GreenColor implements Color {
  @override
  String fillColor = "Green";
}

// void main() {
//   Shape circle = Circle(RedColor());
//   Shape square = Square(GreenColor());
//   circle.drawShape(); // Drawing Circle with Red
//   square.drawShape(); // Drawing Square with Green
// }