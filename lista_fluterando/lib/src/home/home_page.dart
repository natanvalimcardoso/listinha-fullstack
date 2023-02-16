import 'package:flutter/material.dart';

import '../shared/widgets/user_image_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 28, right: 16, bottom: 16, left: 16),
            child: Text('Opções'),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.sync),
            label: Text('Sincronizar'),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.settings),
            label: Text('Configurações'),
          ),
        ],
      ),
      appBar: AppBar(
        title: const Text('Listinha'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: UserImageButton(),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: SegmentedButton<int>(
                segments: const [
                  ButtonSegment(
                    value: 0,
                    label: Text('Todos'),
                  ),
                  ButtonSegment(
                    value: 1,
                    label: Text('Pendentes'),
                  ),
                  ButtonSegment(
                    value: 2,
                    label: Text('Concluidas'),
                  ),
                  ButtonSegment(
                    value: 3,
                    label: Text('Desativadas'),
                  ),
                ],
                selected: const {0},
                onSelectionChanged: (values) {},
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Nova Lista'),
        icon: const Icon(Icons.edit),
        onPressed: () {},
      ),
    );
  }
}
