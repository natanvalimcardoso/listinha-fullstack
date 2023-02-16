import 'package:flutter/material.dart';

part 'color_schemes.g.dart';
//* Para usar os privados do color_schemes.g.dart eu usei o part
//? No caso o arquivo color_schemes.g.dart é parte do arquivo themes.dart!
//? Ou seja ele são um arquivo só.

final lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: _lightColorScheme,
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: _lightColorScheme.primaryContainer,
    foregroundColor: _lightColorScheme.onPrimaryContainer,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: _lightColorScheme.primary,
    foregroundColor: _lightColorScheme.onPrimary,
  ),
  segmentedButtonTheme: _segmentedButtonTheme
);

final darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: _darkColorScheme,
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: _darkColorScheme.primary,
    foregroundColor: _darkColorScheme.onPrimary,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: _darkColorScheme.primary,
    foregroundColor: _darkColorScheme.onPrimary,
  ),
  segmentedButtonTheme:  _segmentedButtonTheme
);


SegmentedButtonThemeData get _segmentedButtonTheme => SegmentedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.selected)) {
            return const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500
            );
          }
          return const TextStyle(fontSize: 12);
        },
      ),
    ),
  );