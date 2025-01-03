import 'package:flutter_test/flutter_test.dart';
import 'package:jocaaguraarchetype/jocaaguraarchetype.dart';

// revisado 10/03/2024 @albertjjimenezp

void main() {
  test('adds one to input values', () {
    final JocaaguraArchetype calculator = JocaaguraArchetype();
    expect(calculator.addOne(2), 3);
    expect(calculator.addOne(-7), -6);
    expect(calculator.addOne(0), 1);
  });

  test('testMe function', () async {
    final DateTime dateTime = DateTime.now();
    final JocaaguraArchetype jocaaguraArchetype = JocaaguraArchetype();
    await jocaaguraArchetype.testMe();
    final int duration = DateTime.now().difference(dateTime).inMilliseconds;
    expect(duration, greaterThan(2000));
  });
}
