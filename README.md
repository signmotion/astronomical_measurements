# Astronomical Measurements

![Cover - Astronomical Measurements](https://raw.githubusercontent.com/signmotion/astronomical_measurements/master/images/cover.webp)

[![GitHub License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Pub Package](https://img.shields.io/pub/v/id_gen.svg?logo=dart&logoColor=00b9fc&color=blue)](https://pub.dartlang.org/packages/id_gen)
[![Code Size](https://img.shields.io/github/languages/code-size/signmotion/id_gen?logo=github&logoColor=white)](https://github.com/signmotion/id_gen)
[![Publisher](https://img.shields.io/pub/publisher/id_gen)](https://pub.dev/publishers/syrokomskyi.com)

![SDK version](https://badgen.net/pub/sdk-version/id_gen)
![Supported platforms](https://badgen.net/pub/flutter-platform/id_gen)
![Supported SDKs](https://badgen.net/pub/dart-platform/id_gen)

[![Build Status](https://img.shields.io/github/actions/workflow/status/signmotion/id_gen/dart-ci.yml?logo=github-actions&logoColor=white)](https://github.com/signmotion/id_gen/actions)
[![Pull Requests](https://img.shields.io/github/issues-pr/signmotion/id_gen?logo=github&logoColor=white)](https://github.com/signmotion/id_gen/pulls)
[![Issues](https://img.shields.io/github/issues/signmotion/id_gen?logo=github&logoColor=white)](https://github.com/signmotion/id_gen/issues)
[![Pub Score](https://img.shields.io/pub/points/id_gen?logo=dart&logoColor=00b9fc)](https://pub.dev/packages/id_gen/score)

Keeping and converting astronomical measurements.
Easy-to-use and [well-tested](https://github.com/signmotion/astronomical_measurements/tree/master/test) Dart package.
Feel free to use it in your awesome projects.

[![CodeFactor](https://codefactor.io/repository/github/signmotion/id_gen/badge)](https://codefactor.io/repository/github/signmotion/id_gen)

Share some ❤️ and star repo to support the project.

_If you write an article about **IdGen** or any of [these](https://pub.dev/packages?q=publisher%3Asyrokomskyi.com&sort=updated) packages, let me know and I'll post the URL of the article in the **README** 🤝_

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

## Whats New

Look at [changelog](https://pub.dev/packages/id_gen/changelog).

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
