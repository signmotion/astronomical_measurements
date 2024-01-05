import 'dart:math';

import 'package:equatable/equatable.dart';

import 'unit_type.dart';

class Unit extends Equatable {
  const Unit(
    this.value,
    this.type, {
    this.equalsPlaces = 19,
  });

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

  final double value;
  final UnitType type;

  /// Using for equals units by double values.
  final int equalsPlaces;

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
        ? _upperToLower(other.index)
        : _lowerToUpper(other.index);

    return Unit(r, other);
  }

  double _upperToLower(int index) {
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

  double _lowerToUpper(int index) {
    var r = value;
    for (var i = type.index;
        i != index && i != UnitType.undefinedUpper.index;
        --i) {
      final prev = UnitType.values[i];
      r /= prev.ratiosToUpper;
    }

    return r;
  }

  Unit ceil() => Unit(value.ceilToDouble(), type, equalsPlaces: equalsPlaces);

  Unit floor() => Unit(value.floorToDouble(), type, equalsPlaces: equalsPlaces);

  Unit round([int decimalPlaces = 0]) =>
      Unit(_round(value, decimalPlaces), type, equalsPlaces: equalsPlaces);

  /// Copied from `dart_helpers` package.
  double _round(double x, [int decimalPlaces = 0]) => decimalPlaces == 0
      ? x.roundToDouble()
      : (x * pow(10, decimalPlaces)).roundToDouble() / pow(10, decimalPlaces);

  Unit operator +(Unit other) {
    final converted = other.convertTo(type);
    return Unit(value + converted.value, type);
  }

  Unit operator -(Unit other) {
    final converted = other.convertTo(type);
    return Unit(value - converted.value, type);
  }

  Unit operator -() => Unit(-value, type);

  @override
  bool operator ==(Object other) {
    if (other is! Unit) {
      return false;
    }

    final converted = other.convertTo(type);

    return _round(converted.value, equalsPlaces) == _round(value, equalsPlaces);
  }

  @override
  int get hashCode =>
      value.toStringAsFixed(equalsPlaces).hashCode + 121 * type.hashCode;

  @override
  List<Object?> get props => [value, type];

  @override
  String toString() => '$value $type';
}
