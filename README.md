# Astronomical Measurements

![Cover - Astronomical Measurements](https://raw.githubusercontent.com/signmotion/astronomical_measurements/master/images/cover.webp)

[![GitHub License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Pub Package](https://img.shields.io/pub/v/astronomical_measurements.svg?logo=dart&logoColor=00b9fc&color=blue)](https://pub.dartlang.org/packages/astronomical_measurements)
[![Code Size](https://img.shields.io/github/languages/code-size/signmotion/astronomical_measurements?logo=github&logoColor=white)](https://github.com/signmotion/astronomical_measurements)
[![Publisher](https://img.shields.io/pub/publisher/astronomical_measurements)](https://pub.dev/publishers/syrokomskyi.com)

[![Build Status](https://img.shields.io/github/actions/workflow/status/signmotion/astronomical_measurements/dart-ci.yml?logo=github-actions&logoColor=white)](https://github.com/signmotion/astronomical_measurements/actions)
[![Pull Requests](https://img.shields.io/github/issues-pr/signmotion/astronomical_measurements?logo=github&logoColor=white)](https://github.com/signmotion/astronomical_measurements/pulls)
[![Issues](https://img.shields.io/github/issues/signmotion/astronomical_measurements?logo=github&logoColor=white)](https://github.com/signmotion/astronomical_measurements/issues)
[![Pub Score](https://img.shields.io/pub/points/astronomical_measurements?logo=dart&logoColor=00b9fc)](https://pub.dev/packages/astronomical_measurements/score)

Keeping and converting astronomical measurements.
Easy-to-use and [well-tested](https://github.com/signmotion/astronomical_measurements/tree/master/test) Dart package.
Feel free to use it in your awesome projects.

| Android | iOS | Linux | MacOS | Web | Windows |              |
| :-----: | :-: | :---: | :---: | :-: | :-----: | :----------- |
|   ✅    | ✅  |  ✅   |  ✅   | ✅  |   ✅    | **platform** |

| Dart | Flutter |         |
| :--: | :-----: | :------ |
|  ✅  |   ✅    | **SDK** |

Share some ❤️ and star repo to support the project.

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

## Welcome to Inspiration

Requests and suggestions are warmly welcome.

Contributions are what make the open-source community such a great place to learn, create, and be inspired.

If this is your first contribution, I'll leave you with some of the best links I've found: they will help you get started or/and become even more efficient.

- [Guide to Making a First Contribution](https://github.com/firstcontributions/first-contributions). You will find the guide in your native language.
- [How to Contribute to Open Source](https://opensource.guide/how-to-contribute). Longread for deep diving for first-timers and for veterans.
- [Summer Guide from Google](https://youtu.be/qGTQ7dEZXZc).

The package **AstronomicalMeasurements** is open-source, stable and well-tested. Development happens on
[GitHub](https://github.com/signmotion/astronomical_measurements). Feel free to report issues
or create a pull-request there.

General questions are best asked on
[StackOverflow](https://stackoverflow.com/questions/tagged/astronomical_measurements).

And here is a curated list of how you can help:

- Report parts of the documentation that are unclear.
- Fix typos/grammar mistakes.
- Update the documentation or add examples.
- Report bugs and scenarios that are difficult to implement.
- Implement new features by making a pull-request (look below).

## TODO (perhaps)

Once you start using the **AstronomicalMeasurements**, it will become easy to choose the functionality to contribute. But if you already get everything you need from this package but have some free time, let me write here what I have planned:

- A mass.

It's just a habit of mine: writing down ideas that come to mind while working on a project. I confess that I rarely return to these notes. But now, hopefully, even if you don't have an idea yet, the above notes will help you choose the suitable "feature" and become a contributor to the open-source community.

Created [with ❤️](https://syrokomskyi.com)
