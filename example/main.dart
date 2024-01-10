// ignore_for_file: avoid_print

import 'package:astronomical_measurements/astronomical_measurements.dart';

void main() {
  final u = Unit.parsec(12);
  print('$u = ${u.toLightYear} = ${u.toAstronomicalUnit} = ${u.toKilometre}');
}
