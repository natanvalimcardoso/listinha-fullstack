import 'package:flutter_modular/flutter_modular.dart';
import 'package:lista_fluterando/src/modules/configuration/configuration_module.dart';
import 'package:lista_fluterando/src/shared/const/route_const.dart';
import 'package:lista_fluterando/src/shared/controller/app_controller.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  //Coloquei singleton aqui pois eu quero que
  //seja uma única instância pra todas as rotas.
  @override
  List<Bind> get binds => [
        Bind.singleton((i) => AppController()),
      ];

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
