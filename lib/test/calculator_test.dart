import 'package:flutter_test/flutter_test.dart';
import 'package:testing_flutter/calculator.dart';


void main() {

  group('Calculator', () {
    test('should return the correct sum when adding two numbers', () {
      // Arrange
      final calculator = Calculator();

      // Act
      final result = calculator.add(2, 3);

      // Assert
      expect(result, 5);
    });

    test('should return the correct difference when subtracting two numbers', () {
      // Arrange
      final calculator = Calculator();

      // Act
      final result = calculator.subtract(5, 3);

      // Assert
      expect(result, 2);
    });
  });
}