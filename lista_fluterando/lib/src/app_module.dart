import 'package:flutter_modular/flutter_modular.dart';

import 'modules/configuration/configuration_module.dart';
import 'modules/home/home_module.dart';
import 'shared/const/route_const.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<Module> get imports => [];

  List<ModularRoute> get route => [
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
