import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_nextline/Routes/routes.dart';
import 'package:test_nextline/common/theme/main_theme.dart';
import 'application/providers.dart';
import 'common/config/config.dart' as config;

void main() {
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
