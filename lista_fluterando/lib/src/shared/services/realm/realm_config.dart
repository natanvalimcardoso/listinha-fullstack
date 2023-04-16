import 'package:realm/realm.dart';

import 'models/configuration_model.dart';

//* Aula #8 - Precisar rodar o comando: flutter pub run realm generate

LocalConfiguration config = Configuration.local(
  [
    ConfigurationModel.schema,
  ],

  //? -- Serve para inicializar o banco de dados com algum dado padrão --
  initialDataCallback: (realm) {
    realm.add(ConfigurationModel('system')); //use atalho ctrl + alt pra ver
  },
);
