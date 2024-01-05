import 'package:astronomical_measurements/astronomical_measurements.dart';
import 'package:dart_helpers/dart_helpers.dart';
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
        a.toKilometre,
        a,
      );
      expect(
        a.toAstronomicalUnit,
        Unit.astronomicalUnit(1),
      );

      const epsilon = 0.00000000000000000001;

      {
        final actual = a.toLightYear.value;
        final expected = Unit.lightYear(1 / 63241.1).value;
        expect(
          actual.isNear(expected, epsilon),
          true,
          reason: '$actual != $expected',
        );
      }

      {
        final actual = a.toParsec.value;
        final expected = Unit.parsec(1 / 63241.1 / 3.26156377716).value;
        expect(
          actual.isNear(expected, epsilon),
          true,
          reason: '$actual != $expected',
        );
      }

      {
        final actual = a.toKiloparsec.value;
        final expected =
            Unit.kiloparsec(1 / 63241.1 / 3.26156377716 / 1000).value;
        expect(
          actual.isNear(expected, epsilon),
          true,
          reason: '$actual != $expected',
        );
      }

      {
        final actual = a.toMegaparsec.value;
        final expected =
            Unit.megaparsec(1 / 63241.1 / 3.26156377716 / 1000 / 1000).value;
        expect(
          actual.isNear(expected, epsilon),
          true,
          reason: '$actual != $expected',
        );
      }

      {
        final actual = a.toGigaparsec.value;
        final expected =
            Unit.gigaparsec(1 / 63241.1 / 3.26156377716 / 1000 / 1000 / 1000)
                .value;
        expect(
          actual.isNear(expected, epsilon),
          true,
          reason: '$actual != $expected',
        );
      }
    });

    test('convertTo() from upper to lower', () {
      final a = Unit.gigaparsec(1);
      expect(
        a.toGigaparsec,
        a,
      );
      expect(
        a.toMegaparsec,
        Unit.megaparsec(1 * 1000),
      );
      expect(
        a.toKiloparsec,
        Unit.kiloparsec(1 * 1000 * 1000),
      );
      expect(
        a.toParsec,
        Unit.parsec(1 * 1000 * 1000 * 1000),
      );
      expect(
        a.toLightYear,
        Unit.lightYear(1 * 1000 * 1000 * 1000 * 3.26156377716),
      );
      expect(
        a.toAstronomicalUnit,
        Unit.astronomicalUnit(1 * 1000 * 1000 * 1000 * 3.26156377716 * 63241.1),
      );
      expect(
        a.toKilometre,
        Unit.kilometre(
            1 * 1000 * 1000 * 1000 * 3.26156377716 * 63241.1 * 149597870.7),
      );
      expect(
        a.toMetre,
        Unit.metre(1 *
            1000 *
            1000 *
            1000 *
            3.26156377716 *
            63241.1 *
            149597870.7 *
            1000),
      );
      expect(
        a.toCentimetre,
        Unit.centimetre(1 *
            1000 *
            1000 *
            1000 *
            3.26156377716 *
            63241.1 *
            149597870.7 *
            1000 *
            100),
      );
      expect(
        a.toMillimetre,
        Unit.millimetre(1 *
            1000 *
            1000 *
            1000 *
            3.26156377716 *
            63241.1 *
            149597870.7 *
            1000 *
            100 *
            10),
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
