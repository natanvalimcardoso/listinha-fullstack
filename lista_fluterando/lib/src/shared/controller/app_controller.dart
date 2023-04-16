import 'package:flutter/material.dart';

class AppController {
  final themeMode = ValueNotifier(ThemeMode.system);
  final syncDate = ValueNotifier<DateTime?>(null);

  AppController();

  void save() {
    // TODO: Salvar os dados na base local
  }
  void init() {
    // TODO: Salvar os dados na base local
  }

  //* --------------| Tema da aplicação |----------------*//
  
  void changeThemeMode(ThemeMode? mode) {
    if (mode != null) {
      themeMode.value = mode;
      save();
    }
  }

  //* --------------| Horário da sincronização |----------------*//

  void setSyncDate(DateTime date) {
    syncDate.value = date;
  }

}
