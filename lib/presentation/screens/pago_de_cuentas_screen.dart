import 'package:aplicacion_numero_uno/config/theme/extension_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PagoCuentasScreen extends StatelessWidget {
  static const name = 'pago-cuentas';
  static const path = '/pago-cuentas';

  const PagoCuentasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.darkBlue,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
