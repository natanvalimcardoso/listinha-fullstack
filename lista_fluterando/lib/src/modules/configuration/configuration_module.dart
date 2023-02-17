import 'package:flutter_modular/flutter_modular.dart';

import 'pages/configuration_page.dart';


class ConfigurationModule extends Module {
  
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (_, args) => const ConfigurationPage(),
        ),
      ];
}
