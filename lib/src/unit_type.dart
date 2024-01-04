enum UnitType implements Comparable<UnitType> {
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

  const UnitType(this.shortName, this.ratiosToUpper);

  final String shortName;
  final double ratiosToUpper;

  @override
  int compareTo(UnitType other) => index.compareTo(other.index);

  @override
  String toString() => shortName;
}