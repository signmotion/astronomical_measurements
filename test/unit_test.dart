import 'package:astronomical_measurements/astronomical_measurements.dart';
import 'package:test/test.dart';

void main() {
  group('Unit', () {
    test('convertTo() from upper to lower', () {
      final a = Unit.kilometre(1);
      expect(a.toMetre, Unit.metre(1000));
      expect(a.toCentimetre, Unit.centimetre(1000 * 100));
      expect(a.toMillimetre, Unit.millimetre(1000 * 100 * 10));
    });

    test('convertTo() from lower to upper', () {
      final a = Unit.kilometre(149597870.7);
      expect(
        a.toAstronomicalUnit,
        Unit.astronomicalUnit(1),
      );
      expect(
        a.toLightYear,
        Unit.lightYear(1 / 63241.1),
      );
      expect(
        a.toParsec,
        Unit.parsec(1 / 63241.1 / 3.26156377716),
      );
      expect(
        a.toKiloparsec,
        Unit.kiloparsec(1 / 63241.1 / 3.26156377716 / 1000),
      );
      expect(
        a.toMegaparsec,
        Unit.megaparsec(1 / 63241.1 / 3.26156377716 / 1000 / 1000),
      );
      expect(
        a.toGigaparsec,
        Unit.gigaparsec(1 / 63241.1 / 3.26156377716 / 1000 / 1000 / 1000),
      );
    });

    test('operator +(other)', () {
      final a = Unit.kilometre(1);
      final b = Unit.metre(100);
      expect(a + b, Unit.kilometre(1.100));
      expect(b + a, Unit.metre(1100));
    });

    test('operator -(other)', () {
      final a = Unit.kilometre(1);
      final b = Unit.metre(100);
      expect(a - b, Unit.kilometre(0.900));
      expect(b - a, Unit.metre(-900));
    });

    test('operator -()', () {
      final a = Unit.kilometre(-1000);
      expect(-a, Unit.kilometre(1000));
    });
  });
}
