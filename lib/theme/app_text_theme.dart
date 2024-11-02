import 'package:flutter/material.dart';

class AppTextTheme {
  static const String fontFamily = 'Rubik';

  static TextTheme lightTextTheme() {
    return buildTextTheme(ThemeData.light().textTheme, fontFamily);
  }

  static TextTheme darkTextTheme() {
    return buildTextTheme(ThemeData.dark().textTheme, fontFamily);
  }

  static TextTheme buildTextTheme(TextTheme baseTheme, String fontFamily) {
    return baseTheme.copyWith(
      displayLarge: baseTheme.displayLarge?.copyWith(
        fontFamily: fontFamily,
        fontSize: 96.0,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
      ),
      displayMedium: baseTheme.displayMedium?.copyWith(
        fontFamily: fontFamily,
        fontSize: 60.0,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
      ),
      displaySmall: baseTheme.displaySmall?.copyWith(
        fontSize: 48,
        fontWeight: FontWeight.w400,
        fontFamily: fontFamily,
      ),
      headlineLarge: baseTheme.headlineLarge?.copyWith(
        fontFamily: fontFamily,
        fontSize: 34,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      headlineMedium: baseTheme.headlineMedium?.copyWith(
        fontFamily: fontFamily,
        fontSize: 24,
        fontWeight: FontWeight.w400,
      ),
      headlineSmall: baseTheme.headlineSmall?.copyWith(
        fontFamily: fontFamily,
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
      ),
      titleLarge: baseTheme.titleLarge?.copyWith(
        fontFamily: fontFamily,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
      ),
      titleMedium: baseTheme.titleMedium?.copyWith(
        fontFamily: fontFamily,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
      ),
      titleSmall: baseTheme.titleSmall?.copyWith(
        fontFamily: fontFamily,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
      ),
      bodyLarge: baseTheme.bodyLarge?.copyWith(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
      ),
      bodyMedium: baseTheme.bodyMedium?.copyWith(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
      ),
      bodySmall: baseTheme.bodySmall?.copyWith(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
      ),
      labelLarge: baseTheme.labelLarge?.copyWith(
        fontFamily: fontFamily,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      labelMedium: baseTheme.labelMedium?.copyWith(
        fontFamily: fontFamily,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
      ),
      labelSmall: baseTheme.labelSmall?.copyWith(
        fontFamily: fontFamily,
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
      ),
    );
  }
}
