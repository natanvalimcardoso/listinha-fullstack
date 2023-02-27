import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lista_fluterando/src/shared/controller/app_controller.dart';

import 'shared/const/route_const.dart';
import 'shared/themes/themes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute(RouteConst.homeModule);

    final appController = context.watch<AppController>(
      (controller) => controller.themeMode,
      //o context.watch serve para escutar um cara especifico
      //coloquei (controller) => para selecionar o que eu quero
      //pois caso eu tivesse mais de um metodo ele ficaria confuso
    );

    return MaterialApp.router(
      title: 'Flutter Listinha',
      debugShowCheckedModeBanner: false,
      themeMode: appController.themeMode.value,
      theme: lightTheme,
      darkTheme: darkTheme,
      routerDelegate: Modular.routerDelegate,
      routeInformationParser: Modular.routeInformationParser,
    );
  }
}
