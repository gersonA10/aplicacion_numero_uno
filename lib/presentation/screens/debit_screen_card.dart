import 'package:aplicacion_numero_uno/utils/asset_image_app.dart';
import 'package:flutter/material.dart';


class DebitCardScreen extends StatelessWidget {
  const DebitCardScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        actions: const [
         Text('Buscar')
        ],
        elevation: 10,
        title: const Text('Titulo'),
      ),
      body: Center(
        child: Column(
          children: [
             Image.asset(AssetImageApp.getLogo),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Metodos de Pago', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            ),
             const Padding(
               padding: EdgeInsets.all(8.0),
               child: Text('Pago por QR', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),),
             ),
            Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(20),)
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Visa', style: TextStyle(color: Colors.white, fontSize: 20),),
                        Text('08/26', style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Text('Bs 1260', style: TextStyle(color: Colors.white, fontSize: 19),),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Text('******* ***** **** 3566', style: TextStyle(color: Colors.white, fontSize: 17),),
                  ),
                ],
              ),
            ),
    
            const SizedBox(
                    height: 30,
                  ),
    
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Pago por Tarjeta \nDebidto/Credito', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),),
                  ),
            Container(
              width: 300,
              height: 150,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 211, 11, 11),
                borderRadius: BorderRadius.all(Radius.circular(20),)
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Visa', style: TextStyle(color: Colors.white, fontSize: 20),),
                        Text('08/26', style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Text('Bs 1260', style: TextStyle(color: Colors.white, fontSize: 19),),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Text('******* ***** **** 3566', style: TextStyle(color: Colors.white, fontSize: 17),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}