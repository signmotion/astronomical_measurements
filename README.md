# Astronomical Measurements Library

![Cover - Astronomical Measurements](https://raw.githubusercontent.com/signmotion/astronomical_measurements/master/images/cover.webp)

Keeping and converting astronomical measurements.
Well-tested Dart package.

## Usage

### Converting

```dart
final u = Unit.parsec(12);
print('$u = ${u.toLightYear} = ${u.toKilometre}');

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

## License

[MIT](LICENSE)
