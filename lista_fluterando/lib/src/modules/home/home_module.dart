import 'package:flutter_modular/flutter_modular.dart';
import 'package:lista_fluterando/src/modules/home/edit_task_board_page.dart';

import '../../shared/const/route_const.dart';
import 'home_page.dart';

class HomeModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (_, __) => const HomePage(),
        ),
        ChildRoute(
          RouteConst.edit,
          child: (_, __) => const EditTaskBoardPage(),
        ),
      ];
}
