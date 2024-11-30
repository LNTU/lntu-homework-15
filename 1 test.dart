import 'package:flutter_test/flutter_test.dart';

class Calculator {
  double calculate(double x) {
    return 19 * x - 0.5 * x * x;
  }
}

void main() {
  group('Calculator', () {
    final calculator = Calculator();

    test('should calculate y = 19x - 0.5x^2 correctly for x = 2', () {
      expect(calculator.calculate(2), 33.0);
    });

    test('should calculate y = 19x - 0.5x^2 correctly for x = 5', () {
      expect(calculator.calculate(5), 70.0);
    });

    test('should calculate y = 19x - 0.5x^2 correctly for x = 0', () {
      expect(calculator.calculate(0), 0.0);
    });
  });
}
