import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import '../../../shared/const/route_const.dart';
import '../../../shared/controller/app_controller.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final controller = context.watch<AppController>(
      (controller) => controller.syncDate,
    );

    final date = controller.syncDate.value;

    var syncDateText = 'Nunca';

    if (date != null) {
      final formatter = DateFormat('dd/MM/yyyy às hh:mm');
      syncDateText = formatter.format(date);
    }

    return NavigationDrawer(
      
      onDestinationSelected: (index) {
        if (index == 1) {
          Modular.to.pop();
          Modular.to.pushNamed(RouteConst.configModule);
        }
      },

      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 28,
            right: 16,
            bottom: 16,
            left: 16,
          ),
          child: Text(
            'Opções',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        NavigationDrawerDestination(
          icon: const Icon(Icons.sync),
          label: SizedBox(
            width: 210,
            child: Row(
              children: [
                const Text('Sincronizar'),
                const Spacer(),
                Text(
                  syncDateText,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ),
        const NavigationDrawerDestination(
          icon: Icon(Icons.settings),
          label: Text('Configurações'),
          
        ),
      ],
    );
  }
}
