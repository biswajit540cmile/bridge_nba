abstract class Shape { ///Abstraction Class
  Color color;
  Shape(this.color);
  void drawShape();
}

class Circle extends Shape {///Refined Abstraction 1
  Circle(Color color) : super(color);
  void drawShape() {
    print("Drawing Circle with ${color.fillColor}");
  }
}

class Square extends Shape {///Refined Abstraction 2
  Square(Color color) : super(color);
  void drawShape() {
    print("Drawing Square with ${color.fillColor}");
  }
}

abstract class Color { ///Implementor interface
  late String fillColor;
}

class RedColor implements Color {///Concrete Implementor 1
  @override
  String fillColor = "Red";
}

class GreenColor implements Color {///Concrete Implementor 2
  @override
  String fillColor = "Green";
}

// void main() {
//   Shape circle = Circle(RedColor());
//   Shape square = Square(GreenColor());
//   circle.drawShape(); // Drawing Circle with Red
//   square.drawShape(); // Drawing Square with Green
// }