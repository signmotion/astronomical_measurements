import 'dart:collection';

import 'package:astronomical_measurements/src/unit.dart';
import 'package:equatable/equatable.dart';

import 'unit_type.dart';

class Distance extends Equatable {
  final SplayTreeMap<UnitType, double> mapped;

  set units(List<Unit> l) {
    for (final u in l) {
      if (u.value != 0.0) {
        mapped[u.unit] = u.value;
      }
    }
  }

  List<Unit> get units =>
      mapped.entries.map((e) => Unit(e.value, e.key)).toList();

  Distance(List<Unit> units) : mapped = SplayTreeMap<UnitType, double>() {
    this.units = units;
  }

  const Distance.fromMap(this.mapped);

  Distance.empty() : mapped = SplayTreeMap<UnitType, double>();

  factory Distance.gigaparsecs(double value) =>
      Distance([Unit.gigaparsec(value)]);

  factory Distance.megaparsecs(double value) =>
      Distance([Unit.megaparsec(value)]);

  factory Distance.kiloparsecs(double value) =>
      Distance([Unit.kiloparsec(value)]);

  factory Distance.parsecs(double value) => Distance([Unit.parsec(value)]);

  factory Distance.lightYears(double value) =>
      Distance([Unit.lightYear(value)]);

  factory Distance.astronomicalUnits(double value) =>
      Distance([Unit.astronomicalUnit(value)]);

  factory Distance.kilometres(double value) =>
      Distance([Unit.kilometre(value)]);

  factory Distance.metres(double value) => Distance([Unit.metre(value)]);

  factory Distance.centimetres(double value) =>
      Distance([Unit.centimetre(value)]);

  factory Distance.millimetres(double value) =>
      Distance([Unit.millimetre(value)]);

  Distance operator +(Distance other) {
    final r = SplayTreeMap<UnitType, double>.from(mapped);
    for (final oe in other.mapped.entries) {
      if (!r.containsKey(oe.key)) {
        r[oe.key] = 0.0;
      }
      r[oe.key] = r[oe.key]! + oe.value;
    }

    r.removeWhere((key, value) => value == 0.0);

    return Distance.fromMap(r);
  }

  Distance operator -(Distance other) {
    final r = SplayTreeMap<UnitType, double>.from(mapped);
    for (final oe in other.mapped.entries) {
      if (!r.containsKey(oe.key)) {
        r[oe.key] = 0.0;
      }
      r[oe.key] = r[oe.key]! - oe.value;
    }

    r.removeWhere((key, value) => value == 0.0);

    return Distance.fromMap(r);
  }

  Distance operator -() {
    final r = SplayTreeMap<UnitType, double>.from(mapped);
    for (final oe in r.entries) {
      r[oe.key] = -oe.value;
    }

    return Distance.fromMap(r);
  }

  @override
  List<Object?> get props => units;

  @override
  String toString() => units.join(' ');
}
