import 'package:equatable/equatable.dart';

import 'unit_type.dart';

class Unit extends Equatable {
  final double value;
  final UnitType unit;

  const Unit(this.value, this.unit);

  factory Unit.gigaparsec(double value) => Unit(value, UnitType.gigaparsec);

  factory Unit.megaparsec(double value) => Unit(value, UnitType.megaparsec);

  factory Unit.kiloparsec(double value) => Unit(value, UnitType.kiloparsec);

  factory Unit.parsec(double value) => Unit(value, UnitType.parsec);

  factory Unit.lightYear(double value) => Unit(value, UnitType.lightYear);

  factory Unit.astronomicalUnit(double value) =>
      Unit(value, UnitType.astronomicalUnit);

  factory Unit.kilometre(double value) => Unit(value, UnitType.kilometre);

  factory Unit.metre(double value) => Unit(value, UnitType.metre);

  factory Unit.centimetre(double value) => Unit(value, UnitType.centimetre);

  factory Unit.millimetre(double value) => Unit(value, UnitType.millimetre);

  Unit get toGigaparsec => convertTo(UnitType.gigaparsec);

  Unit get toMegaparsec => convertTo(UnitType.megaparsec);

  Unit get toKiloparsec => convertTo(UnitType.kiloparsec);

  Unit get toParsec => convertTo(UnitType.parsec);

  Unit get toLightYear => convertTo(UnitType.lightYear);

  Unit get toAstronomicalUnit => convertTo(UnitType.astronomicalUnit);

  Unit get toKilometre => convertTo(UnitType.kilometre);

  Unit get toMetre => convertTo(UnitType.metre);

  Unit get toCentimetre => convertTo(UnitType.centimetre);

  Unit get toMillimetre => convertTo(UnitType.millimetre);

  Unit convertTo(UnitType other) {
    if (unit == other) {
      return this;
    }

    var r = value;

    if (other.index > unit.index) {
      // from upper to lower
      for (var i = unit.index + 1;
          i != other.index + 1 && i != UnitType.undefinedLower.index;
          ++i) {
        final next = UnitType.values[i];
        if (next.ratiosToUpper != -1) {
          r *= next.ratiosToUpper;
        }
      }
    } else {
      // from lower to upper
      for (var i = unit.index;
          i != other.index && i != UnitType.undefinedUpper.index;
          --i) {
        final prev = UnitType.values[i];
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
