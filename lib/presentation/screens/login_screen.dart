import 'package:aplicacion_numero_uno/config/theme/extension_theme.dart';
import 'package:aplicacion_numero_uno/presentation/providers/auth_provider.dart';
import 'package:aplicacion_numero_uno/presentation/providers/login_provider.dart';
import 'package:aplicacion_numero_uno/presentation/screens/news/news_home_screen.dart';
import 'package:aplicacion_numero_uno/presentation/screens/seleccionar_detalle_a_pagar.dart';
import 'package:aplicacion_numero_uno/utils/asset_image_app.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

TextEditingController textEditingControllerUsername = TextEditingController();
TextEditingController textEditingControllerPassword = TextEditingController();

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context);
    
    // authProvider.login("sintesis", "sintesis22");

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -150,
            left: -160,
            child: Transform.rotate(
              angle: -75 / -100,
              child: Container(
                height: 300,
                width: 300,
                color: const Color.fromARGB(255, 26, 117, 192),
              ),
            ),
          ),
          Positioned(
            bottom: -150,
            right: -220,
            child: Transform.rotate(
              angle: -75 / -100,
              child: Container(
                height: 300,
                width: 300,
                color: const Color.fromARGB(255, 26, 117, 192),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 150,
                  ),
                  Image.asset(AssetImageApp.getLogo),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Pagos en Linea EMI',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                  const Text(
                    'Paga tus cuentas',
                    style: TextStyle(fontWeight: FontWeight.w200, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: textEditingControllerUsername,
                    decoration: InputDecoration(
                      hintText: 'Buscador',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                   const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 40),
                      width: 210,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          // String username = textEditingControllerUsername.text;
                          // String password = textEditingControllerPassword.text;

                          // print(username);
                          // print(password);

                          // authProvider.login(username, password);
                          //Logica para navegar a otra pantalla
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => const DebitCardScreen()),
                          // );
                          // context.go(NewsHomeScreen.path);
                          context.push(SeleccionarDetalleScreen.path);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).colorScheme.yellow,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'Iniciar Sesion',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  const Center(
                    child: Text(
                      '100% Transacciones seguras',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
