import 'package:aplicacion_numero_uno/config/router/app_router.dart';
import 'package:flutter/material.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {


    return MaterialApp.router(
      title: 'Aplicacion uno',
      routerConfig: appRouter,
      
    );
  }
}