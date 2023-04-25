import 'package:astronomical_measurements/astronomical_measurements.dart';
import 'package:test/test.dart';

void main() {
  group('Distance', () {
    test('constructor, sorted units', () {
      final r = Distance([Unit.lightYear(100), Unit.kilometre(2)]);
      expect(Distance([Unit.lightYear(100), Unit.kilometre(2)]), r);
      expect(Distance([Unit.kilometre(2), Unit.lightYear(100)]), r);
    });

    test('constructor, empty units', () {
      expect(Distance([Unit.lightYear(0), Unit.kilometre(1)]),
          Distance.kilometres(1));
      expect(
          Distance([Unit.lightYear(0), Unit.kilometre(0)]), Distance.empty());
    });

    test('operator +(other)', () {
      final a = Distance.lightYears(100);
      final b = Distance.kilometres(2);
      final r1 = Distance([Unit.lightYear(100), Unit.kilometre(2)]);
      expect(a + b, r1);
      expect(b + a, r1);

      final r2 = Distance([Unit.lightYear(200), Unit.kilometre(4)]);
      expect(a + b + a + b, r2);
    });

    test('operator -(other)', () {
      final a = Distance.lightYears(100);
      final b = Distance.kilometres(2);
      expect(a - b, Distance([Unit.lightYear(100), Unit.kilometre(-2)]));
      expect(b - a, Distance([Unit.lightYear(-100), Unit.kilometre(2)]));

      expect((a + b) - (a + b), Distance.empty());
    });

    test('operator -()', () {
      final a = Distance.parsecs(-500);
      expect(-a, Distance.parsecs(500));
    });
  });
}
