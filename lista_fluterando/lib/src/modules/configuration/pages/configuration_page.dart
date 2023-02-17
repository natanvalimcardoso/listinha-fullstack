import 'package:flutter/material.dart';

class ConfigurationPage extends StatelessWidget {
  const ConfigurationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuration'),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: size.height * 0.04,
          left: size.width * 0.04,
          right: size.width * 0.04,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Configurações',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 28,
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Text(
              'Tema',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            RadioListTile(
              value: ThemeMode.light,
              groupValue: ThemeMode.light,
              title: const Text('Sistema'),
              onChanged: (mode) {},
            ),
            RadioListTile(
              value: ThemeMode.light,
              groupValue: ThemeMode.light,
              title: const Text('Claro'),
              onChanged: (mode) {},
            ),
            RadioListTile(
              value: ThemeMode.light,
              groupValue: ThemeMode.light,
              title: const Text('Escuro'),
              onChanged: (mode) {},
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Text(
              'Controle de dados',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Apagar cache e reiniciar o app'),
            )
          ],
        ),
      ),
    );
  }
}
