import 'package:equatable/equatable.dart';

enum Units implements Comparable<Units> {
  undefinedUpper('undefinedUpper', 0.0),
  // distance
  gigaparsec('Gpc', -1),
  megaparsec('Mpc', 1000),
  kiloparsec('kpc', 1000),
  parsec('pc', 1000),
  lightYear('ly', 3.26156377716),
  astronomicalUnit('au', 63241.1),
  kilometre('km', 149597870.7),
  metre('m', 1000),
  centimetre('cm', 100),
  millimetre('mm', 10),
  // TODO mass
  undefinedLower('undefinedLower', -1),
  ;

  const Units(this.shortName, this.ratiosToUpper);

  final String shortName;
  final double ratiosToUpper;

  @override
  int compareTo(Units other) => index.compareTo(other.index);

  @override
  String toString() => shortName;
}

class Unit extends Equatable {
  final double value;
  final Units unit;

  const Unit(this.value, this.unit);

  factory Unit.gigaparsec(double value) => Unit(value, Units.gigaparsec);

  factory Unit.megaparsec(double value) => Unit(value, Units.megaparsec);

  factory Unit.kiloparsec(double value) => Unit(value, Units.kiloparsec);

  factory Unit.parsec(double value) => Unit(value, Units.parsec);

  factory Unit.lightYear(double value) => Unit(value, Units.lightYear);

  factory Unit.astronomicalUnit(double value) =>
      Unit(value, Units.astronomicalUnit);

  factory Unit.kilometre(double value) => Unit(value, Units.kilometre);

  factory Unit.metre(double value) => Unit(value, Units.metre);

  factory Unit.centimetre(double value) => Unit(value, Units.centimetre);

  factory Unit.millimetre(double value) => Unit(value, Units.millimetre);

  Unit get toGigaparsec => convertTo(Units.gigaparsec);

  Unit get toMegaparsec => convertTo(Units.megaparsec);

  Unit get toKiloparsec => convertTo(Units.kiloparsec);

  Unit get toParsec => convertTo(Units.parsec);

  Unit get toLightYear => convertTo(Units.lightYear);

  Unit get toAstronomicalUnit => convertTo(Units.astronomicalUnit);

  Unit get toMetre => convertTo(Units.metre);

  Unit get toCentimetre => convertTo(Units.centimetre);

  Unit get toMillimetre => convertTo(Units.millimetre);

  Unit convertTo(Units other) {
    if (unit == other) {
      return this;
    }

    var r = value;

    if (other.index > unit.index) {
      // from upper to lower
      for (var i = unit.index + 1;
          i != other.index + 1 && i != Units.undefinedLower.index;
          ++i) {
        final next = Units.values[i];
        if (next.ratiosToUpper != -1) {
          r *= next.ratiosToUpper;
        }
      }
    } else {
      // from lower to upper
      for (var i = unit.index;
          i != other.index && i != Units.undefinedUpper.index;
          --i) {
        final prev = Units.values[i];
        r /= prev.ratiosToUpper;
      }
    }

    return Unit(r, other);
  }

  Unit operator +(Unit other) {
    final converted = other.convertTo(unit);
    return Unit(value + converted.value, unit);
  }

  Unit operator -(Unit other) {
    final converted = other.convertTo(unit);
    return Unit(value - converted.value, unit);
  }

  Unit operator -() => Unit(-value, unit);

  @override
  List<Object?> get props => [value, unit];

  @override
  String toString() => '$value $unit';
}
