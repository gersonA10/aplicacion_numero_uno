

import 'package:aplicacion_numero_uno/config/router/app_router.dart';
import 'package:aplicacion_numero_uno/presentation/providers/auth_provider.dart';
import 'package:aplicacion_numero_uno/presentation/providers/news_provider.dart';
import 'package:aplicacion_numero_uno/presentation/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() => runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ThemeProvider(),),
      ChangeNotifierProvider(create: (context) => AuthProvider(),),
      ChangeNotifierProvider(create: (context) => NewsProvider())
  ],
  child: const MyApp(),
)
 );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final providerTheme = Provider.of<ThemeProvider>(context);

    return MaterialApp.router(
      title: 'Aplicacion uno',
      routerConfig: appRouter,
      theme: providerTheme.currentTheme
    );
  }
}
