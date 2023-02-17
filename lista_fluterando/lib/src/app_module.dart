import 'package:flutter_modular/flutter_modular.dart';
import 'package:lista_fluterando/src/modules/configuration/configuration_module.dart';
import 'package:lista_fluterando/src/shared/const/route_const.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<Module> get imports => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          RouteConst.homeModule,
          module: HomeModule(),
        ),
        ModuleRoute(
          RouteConst.configModule,
          module: ConfigurationModule(),
        ),
      ];
}
