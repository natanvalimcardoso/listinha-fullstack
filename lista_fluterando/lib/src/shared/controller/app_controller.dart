import 'package:flutter/material.dart';

class AppController {
  final themeMode = ValueNotifier(ThemeMode.system);
  void changeThemeMode(ThemeMode? mode) {
    if (mode != null) {
      themeMode.value = mode;
      save();
    }
  }

  void save() {
    // TODO: Salvar os dados na base local
  }
}