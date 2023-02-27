import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lista_fluterando/src/shared/const/route_const.dart';
import 'package:lista_fluterando/src/shared/controller/app_controller.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appController = context.watch<AppController>(
      (controller) => controller.syncDate,
    );
     
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
          label: Row(
            children: [
              const Text('Sincronizar'),
              const SizedBox(width: 20),
              Text(
                '12/12/2012 às 12:12',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
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
