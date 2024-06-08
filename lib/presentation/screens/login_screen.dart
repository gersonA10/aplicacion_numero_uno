import 'package:aplicacion_numero_uno/utils/asset_image_app.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Positioned(
            top: -150,
            left: -160,
            child: Transform.rotate(
              angle: -75/ -100,
              child: Container(
                height: 300,
                width: 300,
                color: const Color.fromARGB(255, 26, 117, 192)
              ),
            ),
          ),

           Positioned(
            bottom: -150,
            right: -220,
            child: Transform.rotate(
              angle: -75/ -100,
              child: Container(
                height: 300,
                width: 300,
                color: const Color.fromARGB(255, 26, 117, 192)
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(30.0),
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
                const Text(
                  'Buscar por:',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 40),
                    width: 210,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text('Buscar', style: TextStyle(color: Colors.white),),
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
        
        
        ],
      ),
    );
  }
}
