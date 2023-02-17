import 'package:flutter_modular/flutter_modular.dart';
import 'package:lista_fluterando/src/shared/const/route_const.dart';

import 'configuration_page.dart';


class ConfigurationModule extends Module {
  
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (_, args) => const ConfigurationPage(),
        ),
      ];
}
