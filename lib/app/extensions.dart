// extension on String

import 'package:complete_advanced_flutter/data/mapper/mapper.dart';
import 'package:flutter/material.dart';

extension NonNullString on String? {
  String orEmpty() {
    if (this == null) {
      return EMPTY;
    } else {
      return this!;
    }
  }
}

// extension on Integer

extension NonNullInteger on int? {
  int orZero() {
    if (this == null) {
      return ZERO;
    } else {
      return this!;
    }
  }
}

extension TextThemeExtension on TextTheme {
  static TextTheme createTextTheme({
    TextStyle? headline1,
    TextStyle? headline2,
    TextStyle? headline3,
    TextStyle? headline4,
    TextStyle? subtitle1,
    TextStyle? subtitle2,
    TextStyle? bodyText1,
    TextStyle? bodyText2,
    TextStyle? caption,
  }) {
    return TextTheme(
      displayLarge: headline1, // headline1 -> displayLarge
      displayMedium: headline2, // headline2 -> displayMedium
      displaySmall: headline3, // headline3 -> displaySmall
      headlineMedium: headline4, // headline4 -> headlineMedium
      titleLarge: subtitle1, // subtitle1 -> titleLarge
      titleMedium: subtitle2, // subtitle2 -> titleMedium
      bodyLarge: bodyText1, // bodyText1 -> bodyLarge
      bodyMedium: bodyText2, // bodyText2 -> bodyMedium
      bodySmall: caption, // caption -> bodySmall
    );
  }
}
