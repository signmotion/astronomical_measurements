# Astronomical Measurements Library

![Cover - Astronomical Measurements](https://raw.githubusercontent.com/signmotion/astronomical_measurements/master/images/cover.webp)

[![GitHub License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Pub Package](https://img.shields.io/badge/doc-astronomical_measurements-blue)](https://pub.dartlang.org/packages/astronomical_measurements)
[![Build Status](https://github.com/signmotion/astronomical_measurements/actions/workflows/dart-ci.yml/badge.svg)](https://github.com/signmotion/astronomical_measurements/actions/workflows/dart-ci.yml)
[![Publisher](https://img.shields.io/pub/publisher/astronomical_measurements)](https://pub.dev/publishers/syrokomskyi.com)

Keeping and converting astronomical measurements.
Easy-to-use and well-tested Dart package.
Feel free to use it in your awesome projects.

## Usage

### Converting

```dart
final u = Unit.parsec(12);
print('$u = ${u.toLightYear} = ${u.toKilometre}');

```

```text
12.0 pc = 39.138765325920005 ly = 2475178.5718530393 au = 370281443951481.56 km
```

See also the folder `test` for the use cases.

## Supported Units

### Distance, Size

- gigaparsec
- megaparsec
- kiloparsec
- parsec
- light year
- million astronomical units
- thousand astronomical units
- hundred astronomical units
- astronomical unit
- million kilometres
- thousand kilometres
- hundred kilometres
- kilometre
- metre
- centimetre
- millimetre

## Welcome

Requests and suggestions are warmly welcome.

This package is open-source, stable and well-tested. Development happens on
[GitHub](https://github.com/signmotion/astronomical_measurements). Feel free to report issues
or create a pull-request there.

General questions are best asked on
[StackOverflow](https://stackoverflow.com/questions/tagged/astronomical_measurements).

## TODO

- A mass.
