import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_nextline/Routes/routes.dart';
import 'package:test_nextline/common/theme/main_theme.dart';
import 'application/providers.dart';
import 'common/config/config.dart' as config;
import 'data/datasources/database_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Asegura que Flutter esté inicializado

  // Inicializa la base de datos
  await DatabaseProvider.instance.database;
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeLight = ref.watch(themeAppProvider);
    return MaterialApp.router(debugShowCheckedModeBanner: false, title: config.APP_NAME, theme: themeLight ? MainTheme.light : MainTheme.dark, routerConfig: routes);
  }
}
