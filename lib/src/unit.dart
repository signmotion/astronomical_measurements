import 'dart:math';

import 'package:equatable/equatable.dart';

import 'unit_type.dart';

class Unit extends Equatable {
  const Unit(
    this.value,
    this.type, {
    this.equalsDigits = 19,
  });

  factory Unit.gigaparsec(num value) =>
      Unit(value.toDouble(), UnitType.gigaparsec);

  factory Unit.megaparsec(num value) =>
      Unit(value.toDouble(), UnitType.megaparsec);

  factory Unit.kiloparsec(num value) =>
      Unit(value.toDouble(), UnitType.kiloparsec);

  factory Unit.parsec(num value) => Unit(value.toDouble(), UnitType.parsec);

  factory Unit.lightYear(num value) =>
      Unit(value.toDouble(), UnitType.lightYear);

  factory Unit.astronomicalUnit(num value) =>
      Unit(value.toDouble(), UnitType.astronomicalUnit);

  factory Unit.kilometre(num value) =>
      Unit(value.toDouble(), UnitType.kilometre);

  factory Unit.metre(num value) => Unit(value.toDouble(), UnitType.metre);

  factory Unit.centimetre(num value) =>
      Unit(value.toDouble(), UnitType.centimetre);

  factory Unit.millimetre(num value) =>
      Unit(value.toDouble(), UnitType.millimetre);

  final double value;
  final UnitType type;

  /// Using for equals units by double values.
  final int equalsDigits;

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
    if (type == other) {
      return this;
    }

    final r = other.index > type.index
        ? _convertUpperToLower(other.index)
        : _convertLowerToUpper(other.index);

    return Unit(r, other, equalsDigits: equalsDigits);
  }

  double _convertUpperToLower(int index) {
    var r = value;
    for (var i = type.index + 1;
        i != index + 1 && i != UnitType.undefinedLower.index;
        ++i) {
      final next = UnitType.values[i];
      if (next.ratiosToUpper == -1) {
        throw Exception('A type out of bound.');
      }

      r *= next.ratiosToUpper;
    }

    return r;
  }

  double _convertLowerToUpper(int index) {
    var r = value;
    for (var i = type.index;
        i != index && i != UnitType.undefinedUpper.index;
        --i) {
      final prev = UnitType.values[i];
      r /= prev.ratiosToUpper;
    }

    return r;
  }

  Unit ceil() => Unit(
        value.ceilToDouble(),
        type,
        equalsDigits: equalsDigits,
      );

  int ceilValue() => value.ceil();

  Unit floor() => Unit(
        value.floorToDouble(),
        type,
        equalsDigits: equalsDigits,
      );

  int floorValue() => value.floor();

  Unit round([int decimalPlaces = 0]) => Unit(
        _round(value, decimalPlaces),
        type,
        equalsDigits: equalsDigits,
      );

  double roundValue([int decimalPlaces = 0]) => _round(value, decimalPlaces);

  /// Copied from `dart_helpers` package.
  double _round(num x, [int decimalPlaces = -1]) {
    if (decimalPlaces == -1) {
      decimalPlaces = equalsDigits;
    }

    if (decimalPlaces == 0) {
      return x.roundToDouble();
    }

    final p = pow(10, decimalPlaces);

    return (x * p).roundToDouble() / p;
  }

  double nepper(Unit other) => value / other.convertTo(type).value;

  Unit operator +(Object other) {
    if (other is num) {
      return Unit(
        value + other,
        type,
        equalsDigits: equalsDigits,
      );
    }

    if (other is Unit) {
      final converted = other.convertTo(type);
      return Unit(
        value + converted.value,
        type,
        equalsDigits: equalsDigits,
      );
    }

    throw Exception('Illegal value `$other` for this operator.');
  }

  Unit operator -(Object other) {
    if (other is num) {
      return Unit(value - other, type, equalsDigits: equalsDigits);
    }

    if (other is Unit) {
      final converted = other.convertTo(type);
      return Unit(
        value - converted.value,
        type,
        equalsDigits: equalsDigits,
      );
    }

    throw Exception('Illegal value `$other` for this operator.');
  }

  Unit operator -() => Unit(-value, type, equalsDigits: equalsDigits);

  Unit operator *(Object other) {
    if (other is num) {
      return Unit(value * other, type, equalsDigits: equalsDigits);
    }

    if (other is Unit) {
      final converted = other.convertTo(type);
      return Unit(
        value * converted.value,
        type,
        equalsDigits: equalsDigits,
      );
    }

    throw Exception('Illegal value `$other` for this operator.');
  }

  Unit operator /(Object other) {
    if (other is num) {
      return Unit(value / other, type, equalsDigits: equalsDigits);
    }

    if (other is Unit) {
      final converted = other.convertTo(type);
      return Unit(
        value / converted.value,
        type,
        equalsDigits: equalsDigits,
      );
    }

    throw Exception('Illegal value `$other` for this operator.');
  }

  bool operator >(Object other) {
    if (other is num) {
      return _round(value) > _round(other);
    }

    if (other is Unit) {
      final converted = other.convertTo(type);
      return _round(value) > _round(converted.value);
    }

    return false;
  }

  bool operator <(Object other) {
    if (other is num) {
      return _round(value) < _round(other);
    }

    if (other is Unit) {
      final converted = other.convertTo(type);
      return _round(value) < _round(converted.value);
    }

    return false;
  }

  @override
  bool operator ==(Object other) {
    if (other is num) {
      return _round(value) == _round(other);
    }

    if (other is Unit) {
      final converted = other.convertTo(type);
      return _round(value) == _round(converted.value);
    }

    return false;
  }

  @override
  int get hashCode => _round(value).hashCode + 121 * type.hashCode;

  @override
  List<Object?> get props => [value, type];

  @override
  String toString() => '$value $type';
}
