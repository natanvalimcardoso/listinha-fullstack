import 'package:flutter/material.dart';

class AppController {
  //* --------------| Tema da aplicação |----------------*//
  final themeMode = ValueNotifier(ThemeMode.system);
  void changeThemeMode(ThemeMode? mode) {
    if (mode != null) {
      themeMode.value = mode;
      save();
    }
  }

  //* --------------| Horário da sincronização |----------------*//
  final syncDate = ValueNotifier<DateTime?>(null);

  void setSyncDate(DateTime date) {
    syncDate.value = date;
  }



  //? --------------| Métodos |----------------*//
  void save() {
    // TODO: Salvar os dados na base local
  }
  void init() {
    // TODO: Salvar os dados na base local
  }
}
