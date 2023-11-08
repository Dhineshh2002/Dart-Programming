abstract class Shape {
  String? name;

  Shape(this.name);

  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle(String name, this.radius) : super(name);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

class Rectangle extends Shape {
  double length;
  double breath;

  Rectangle(String name, this.length, this.breath) : super(name);

  @override
  double calculateArea() {
    return length * breath;
  }
}

void main() {
  Circle circle = Circle("Circle", 5);
  print('Area of ${circle.name} : ${circle.calculateArea()}');

  Rectangle rect = Rectangle("Rectangle", 4, 5);
  print('Area of ${rect.name} : ${rect.calculateArea()}');
}
