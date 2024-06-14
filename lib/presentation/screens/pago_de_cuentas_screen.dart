

import 'package:aplicacion_numero_uno/config/theme/extension_theme.dart';
import 'package:aplicacion_numero_uno/utils/asset_image_app.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  width: 250,
                  child: Text(
                    'PAGOS EN LINEA EMI',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.2,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(AssetImageApp.getLogo, height: 100, width: 100,),
              ],
            ),           
            const Text('Paga tus cuentas',
            style: TextStyle(color: Colors.black54, fontSize: 15)
            ),
            Expanded(
              child: ListView(
                children: [
                   Column(
                    children: [
                      Container(               
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            width: 1000,
                            height: 400,
                            decoration:   BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              borderRadius: const BorderRadius.all(Radius.circular(10))
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 40,
                                    width: 500,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black12),
                                      borderRadius: const  BorderRadius.all(Radius.circular(10)),
                                      color: Colors.black12),
                                    child: const Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children:[   
                                        SizedBox(width: 10,),                     
                                        Column(
                                          children: [
                                            SizedBox(height: 10, width: 10,),
                                            CircleAvatar(child: Text('1'),
                                             maxRadius: 12, 
                                             minRadius: 12, 
                                             backgroundColor: Colors.black54,),
                                          ],
                                        ),
                                        SizedBox(height: 5, width: 5,),
                                        Text('Detalles de tu pago', 
                                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                const Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'MONTO A PAGAR',
                                          style: TextStyle(color: Colors.green)
                                        ),
                                        SizedBox(width: 10,),
                                        Text('Bs 15.00', 
                                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, )
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox( height: 20),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 40,
                                    width: 500,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black12),
                                      borderRadius: const  BorderRadius.all(Radius.circular(10)), 
                                      color: Colors.black12),
                                    child: const Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [   
                                        SizedBox(width: 10,height: 20,),                     
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Text('Concepto', 
                                                  style: TextStyle(color: Colors.black54, fontSize: 15)
                                                  ),
                                                  SizedBox(width: 50,),
                                                  Text('Cantidad',
                                                   style: TextStyle(color: Colors.black54, fontSize: 15)
                                                   ),
                                                  SizedBox(width: 10,),
                                                  Text('Precio(Bs)', 
                                                  style: TextStyle(color: Colors.black54, fontSize: 15)
                                                  ),
                                                  SizedBox(width: 10,),
                                                  Text('Total(Bs)', 
                                                  style: TextStyle(color: Colors.black54, fontSize: 15)
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10,),
                                const Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(width: 20,),
                                        Text('CERTIFICACION ', 
                                        style: TextStyle(color: Colors.black54, fontSize: 15)
                                        ),
                                        SizedBox(width: 30,),
                                        Text('1',
                                        style: TextStyle(color: Colors.black54, fontSize: 15)
                                        ),
                                        SizedBox(width: 40,),
                                        Text('15.00',
                                        style: TextStyle(color: Colors.black54, fontSize: 15)
                                        ),
                                        SizedBox(width: 50,),
                                        Text('15.00',
                                        style: TextStyle(color: Colors.black54, fontSize: 15)
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10,),
                                const Divider(color: Colors.black,height: 5,endIndent: 20,),
                                 const Row(
                                  children: [     
                                    SizedBox(width: 200,),                    
                                    Text('Sub Total (Bs)',
                                     style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, )
                                    ),
                                    SizedBox(width: 10,),
                                    Text('15.00',
                                     style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, )
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    SizedBox(width: 200,), 
                                    Text('Comision (Bs)',
                                     style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, )
                                    ),
                                    SizedBox(width: 10,),
                                    Text('15.00', 
                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, )
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    SizedBox(width: 160,), 
                                    Text('MONTO TOTAL (bs)',
                                     style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.green )
                                    ),
                                    SizedBox(width: 10,),
                                    Text('15.00', 
                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, ),
                                    ),
                                  ],
                                ),                        
                                const Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [ 
                                    SizedBox(width: 50,),                         
                                    Text('Pago seguro', 
                                    style: TextStyle(fontSize: 13, color: Colors.black54)
                                    ),
                                  ],
                                ),
                              ],                             
                            ),                   
                          ),
                        ),                                           
                      ),
                      Container(
                        child: Padding(padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 1000,
                          height: 200,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12),
                            borderRadius: const  BorderRadius.all(Radius.circular(10))
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 40,
                                  width: 500,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black12),
                                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                                     color: Colors.black12),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children:[   
                                      SizedBox(width: 10,),                     
                                      Column(
                                        children: [
                                          SizedBox(height: 10, width: 10,),
                                          CircleAvatar(child: Text('2'), maxRadius: 12, minRadius: 12, backgroundColor: Colors.black54,),
                                        ],
                                      ),
                                      SizedBox(height: 5, width: 5,),
                                      Text('Dato para el envio del comprobante/factura', 
                                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      width: 100,
                                      height: 40,
                                      child: TextFormField(                               
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 130,
                                    height: 40,
                                    child: TextFormField(                               
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10,),
                                  SizedBox(
                                    width: 100,
                                    height: 40,
                                    child: TextFormField(                               
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),                                  
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                    child: SizedBox(                                     
                                      width: 160,
                                      height: 40,
                                      child: TextFormField( 
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                          )
                                        ),                              
                                      ),                                        
                                    ),
                                  ),
                                  const SizedBox(width: 10,),
                                  SizedBox(
                                    width: 160,
                                    height: 40,
                                    child: TextFormField(                         
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),),
                      ),
                      Container(
                        child:  Padding(padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 1000,
                          height: 550,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12),
                            borderRadius: const BorderRadius.all(Radius.circular(10))
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 40,
                                  width: 500,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black12),
                                    borderRadius: const BorderRadius.all(Radius.circular(10)), 
                                    color: Colors.black12),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children:[   
                                      SizedBox(width: 10,),                     
                                      Column(
                                        children: [
                                          SizedBox(height: 10, width: 10,),
                                          CircleAvatar(child: Text('3'), maxRadius: 12, minRadius: 12, backgroundColor: Colors.black54,),
                                        ],
                                      ),
                                      SizedBox(height: 5, width: 5,),
                                      Text('Seleccione tu forma de pago', 
                                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Padding(
                                padding:  EdgeInsets.all(10.0),
                                child: Text('Para finalizar el proceso selecciona la forma de pago a utilizar y llena los datos.', 
                                style: TextStyle(fontSize: 16), 
                                textAlign: TextAlign.justify,),
                              ),
                              const Text('Targetas', style: TextStyle(
                                fontSize: 15,
                               fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start,),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    SizedBox(width: 40,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 140,
                                          child: Text('Paga con targetas de Debito/Credito ATC', 
                                          textAlign: TextAlign.justify,
                                           style: TextStyle(color: Colors.black54),
                                          )                                         
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 50,),
                                    SizedBox(
                                      width: 120,
                                      child:  Text('Paga con targeta del BCP',
                                       textAlign: TextAlign.start,
                                       style: TextStyle(color: Colors.black54)
                                      )
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  const SizedBox(width: 60,),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                       borderRadius: const BorderRadius.all(Radius.circular(10)
                                      )
                                    ),
                                    // child: Image.asset(AssetImageApp.getvisa, width: 90, height: 60,)
                                  ),
                                  const SizedBox(width: 100,),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black), 
                                      borderRadius: const  BorderRadius.all(Radius.circular(10)
                                      )
                                    ),
                                    // child: Image.asset(AssetImageApp.getbcp, width: 90, height: 60,)
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10,),
                              const Text('Billeteras móviles', 
                              style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10,),
                              const Text('Paga con la billetera móvil Tigo Money',
                              style: TextStyle(color: Colors.black54),
                              ),
                              const SizedBox(height: 10,),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black), 
                                  borderRadius: const  BorderRadius.all(Radius.circular(10))
                                ),
                                // child: Image.asset(AssetImageApp.gettigoMoney, width: 100, height: 60,)
                              ),
                              const SizedBox(height: 10,),
                              const Text('Débito bancario', 
                              style: TextStyle( fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10,),
                              const Text('Paga con codigo QR del BCP',
                               style: TextStyle(color: Colors.black54),
                               ),
                              const SizedBox(height: 10,),
                              // Image.asset(AssetImageApp.getqr, height: 80,  width: 80,)
                            ],
                          ),
                        ),),
                      ),
                    ],
                  )
               
                ],
              )
            ), 
          ],
        ),
      ),
    );
  }
}