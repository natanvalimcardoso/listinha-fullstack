import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/const/route_const.dart';
import 'edit_task_board_page.dart';
import 'home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (_, args) => const HomePage(),
        ),
        ChildRoute(
          RouteConst.edit,
          child: (_, args) => const EditTaskBoardPage(),
        ),
      ];
}
