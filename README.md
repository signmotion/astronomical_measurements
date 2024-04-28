# Astronomical Measurements

![Cover - Astronomical Measurements](https://raw.githubusercontent.com/signmotion/astronomical_measurements/master/images/cover.webp)

[![GitHub License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Pub Package](https://img.shields.io/pub/v/astronomical_measurements.svg?logo=dart&logoColor=00b9fc&color=blue)](https://pub.dartlang.org/packages/astronomical_measurements)
[![Code Size](https://img.shields.io/github/languages/code-size/signmotion/astronomical_measurements?logo=github&logoColor=white)](https://github.com/signmotion/astronomical_measurements)
[![Publisher](https://img.shields.io/pub/publisher/astronomical_measurements)](https://pub.dev/publishers/syrokomskyi.com)

![SDK version](https://badgen.net/pub/sdk-version/astronomical_measurements)
![Supported platforms](https://badgen.net/pub/flutter-platform/astronomical_measurements)
![Supported SDKs](https://badgen.net/pub/dart-platform/astronomical_measurements)

[![Build Status](https://img.shields.io/github/actions/workflow/status/signmotion/astronomical_measurements/dart-ci.yml?logo=github-actions&logoColor=white)](https://github.com/signmotion/astronomical_measurements/actions)
[![Pull Requests](https://img.shields.io/github/issues-pr/signmotion/astronomical_measurements?logo=github&logoColor=white)](https://github.com/signmotion/astronomical_measurements/pulls)
[![Issues](https://img.shields.io/github/issues/signmotion/astronomical_measurements?logo=github&logoColor=white)](https://github.com/signmotion/astronomical_measurements/issues)
[![Pub Score](https://img.shields.io/pub/points/astronomical_measurements?logo=dart&logoColor=00b9fc)](https://pub.dev/packages/astronomical_measurements/score)

Keeping and converting astronomical measurements.
Easy-to-use and [well-tested](https://github.com/signmotion/astronomical_measurements/tree/master/test) Dart package.
Feel free to use it in your awesome project.

[![CodeFactor](https://codefactor.io/repository/github/signmotion/astronomical_measurements/badge)](https://codefactor.io/repository/github/signmotion/astronomical_measurements)

Share some ❤️ and star repo to support the project.

_If you write an article about **AstronomicalMeasurements** or any of [these](https://pub.dev/packages?q=publisher%3Asyrokomskyi.com&sort=updated) packages, let me know and I'll post the URL of the article in the **README**_ 🤝

## 🚀 Usage

### Converting

```dart
final u = Unit.parsec(12);
print('$u = ${u.toLightYear} = ${u.toKilometre}');

```

```text
12.0 pc = 39.138765325920005 ly = 2475178.5718530393 au = 370281443951481.56 km
```

See also the folder [test](https://github.com/signmotion/astronomical_measurements/tree/master/test) for the use cases.

## 🧮 Supported Units

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

## ✨ What's New

Look at [changelog](https://pub.dev/packages/astronomical_measurements/changelog).

## 👋 Welcome

If you encounter any problems, feel free to [open an issue](https://github.com/signmotion/astronomical_measurements/issues). If you feel the package is missing a feature, please [raise a ticket](https://github.com/signmotion/astronomical_measurements/issues) on Github and I'll look into it. Requests and suggestions are warmly welcome. Danke!

Contributions are what make the open-source community such a great place to learn, create, take a new skills, and be inspired.

If this is your first contribution, I'll leave you with some of the best links I've found: they will help you get started or/and become even more efficient.

- [Guide to Making a First Contribution](https://github.com/firstcontributions/first-contributions). You will find the guide in your native language.
- [How to Contribute to Open Source](https://opensource.guide/how-to-contribute). Longread for deep diving for first-timers and for veterans.
- [Summer Guide from Google](https://youtu.be/qGTQ7dEZXZc).
- [CodeTriangle](https://codetriage.com). Free community tools for contributing to Open Source projects.

The package **AstronomicalMeasurements** is open-source, stable and well-tested. Development happens on
[GitHub](https://github.com/signmotion/astronomical_measurements). Feel free to report issues
or create a pull-request there.

General questions are best asked on
[StackOverflow](https://stackoverflow.com/questions/tagged/astronomical_measurements).

And here is a curated list of how you can help:

- Documenting the undocumented. Whenever you come across a class, property, or method within our codebase that you're familiar with and notice it lacks documentation, kindly spare a couple of minutes to jot down some helpful notes for your fellow developers.
- Refining the code. While I'm aware it's primarily my responsibility to refactor the code, I wholeheartedly welcome any contributions you're willing to make in this area. Your insights and improvements are appreciated!
- Constructive code reviews. Should you discover a more efficient approach to achieve something, I'm all ears. Your suggestions for enhancement are invaluable.
- Sharing your examples. If you've experimented with our use cases or have crafted some examples of your own, feel free to add them to the `example` directory. Your practical insights can enrich our resource pool.
- Fix typos/grammar mistakes.
- Report bugs and scenarios that are difficult to implement.
- Implement new features by making a pull-request.

## ✅ TODO (perhaps)

Once you start using the **AstronomicalMeasurements**, it will become easy to choose the functionality to contribute. But if you already get everything you need from this package but have some free time, let me write here what I have planned:

- A mass.

It's just a habit of mine: writing down ideas that come to mind while working on a project. I confess that I rarely return to these notes. But now, hopefully, even if you don't have an idea yet, the above notes will help you choose the suitable "feature" and become a contributor to the open-source community.

Created [with ❤️](https://syrokomskyi.com)
