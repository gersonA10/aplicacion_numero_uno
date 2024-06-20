import 'package:aplicacion_numero_uno/config/theme/extension_theme.dart';
import 'package:aplicacion_numero_uno/presentation/providers/login_provider.dart';
import 'package:aplicacion_numero_uno/presentation/providers/theme_provider.dart';
import 'package:aplicacion_numero_uno/presentation/screens/pago_de_cuentas_screen.dart';
import 'package:aplicacion_numero_uno/presentation/widgets/custom_table_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class SeleccionarDetalleScreen extends StatefulWidget {
  static const name = 'seleccionar-detalle';
  static const path = '/seleccionar-detalle';

  const SeleccionarDetalleScreen({super.key});

  @override
  State<SeleccionarDetalleScreen> createState() =>
      _SeleccionarDetalleScreenState();
}

class _SeleccionarDetalleScreenState extends State<SeleccionarDetalleScreen> {
  Map<String, dynamic> response = {
    'datos': [
      {
        "detalle": "Certifiaciones en Linea",
        "monto": "Bs 15.00",
        "isSelected": false
      },
      {
        "detalle": "Extension Universitaria",
        "monto": "Bs 15.00",
        "isSelected": false
      },
      {"detalle": "Segunda couta", "monto": "Bs 15.00", "isSelected": false},
      {"detalle": "Atencion Medica", "monto": "Bs 15.00", "isSelected": false},
    ],
    'message': '',
    'error': '',
  };

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final loginProvider = Provider.of<LoginProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.darkBlue,
        actions: [
          IconButton(
            onPressed: (){
              themeProvider.changeTheme();
            }, 
            icon:  Icon( themeProvider.isDark ? Icons.light_mode : Icons.dark_mode ),
          ),
        ],
      ),
      body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'PAGOS EN LINEA EMI',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.2,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Paga tus cuentas',
                  style: TextStyle(
                    letterSpacing: 0.2,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    const Text(
                      'Detalles de tu cuenta',
                      style: TextStyle(
                        letterSpacing: 0.2,
                      ),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        context.push(PagoCuentasScreen.path);
                      },
                      child: const Text('Pagar'),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Text(
                      'Detalle:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Ciencias Basicas | La Paz',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                  Row(
                  children: [
                    const Text(
                      'CI:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                     loginProvider.ci,
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    const Text(
                      'Nombre:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                     const Text(
                      ""
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: loginProvider.listaPagosPendientes.length,
                    itemBuilder: (context, index) {
                      final item = loginProvider.listaPagosPendientes[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: CustomTable(
                          numeral: '# 000 ${index + 1}',
                          titleDetalle: 'Detalle:',
                          contentDetalle: item.item,
                          titleMonto: 'Monto:',
                          contentMonto: '${item.montototal}',
                          children:  [
                             Text('Seleccionar'),
                            Checkbox( 
                              value: false, 
                              onChanged: (bool? value) {  },
                             
                              // onChanged: (bool? value) {  },: (valor) {
                              //   //CTRL+S
                              //   setState(() {
                              //     item['isSelected'] = valor;
                              //   });
                              // },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
    );
  }
}
