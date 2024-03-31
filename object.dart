import 'dart:io';

// Interface for a shape
abstract class Shape {
  double calculateArea();
}

// Base class representing a geometric shape
class GeometricShape implements Shape {
  double calculateArea() {
    return 0.0;
  }
}

// Rectangle class inheriting from GeometricShape and implementing the Shape interface
class Rectangle extends GeometricShape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }
}

// Circle class inheriting from GeometricShape and implementing the Shape interface
class Circle extends GeometricShape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

// A class to read data from a file and initialize an instance of a Rectangle
class RectangleFromFile extends Rectangle {
  RectangleFromFile(double width, double height) : super(width, height);

  factory RectangleFromFile.fromFile(File file) {
    List<String> lines = file.readAsLinesSync();
    double width = double.parse(lines[0]);
    double height = double.parse(lines[1]);
    return RectangleFromFile(width, height);
  }
}

void main() {
  // Initialize a Rectangle instance from a file
  File rectangleFile = File('rectangle.txt');
  RectangleFromFile rectangle = RectangleFromFile.fromFile(rectangleFile);

  // Display area of the rectangle
  print('Area of the rectangle: ${rectangle.calculateArea()}');

  // Demonstrate the use of a loop
  print('Demonstrating a loop:');
  for (int i = 0; i < 5; i++) {
    print('Iteration $i');
  }
}
