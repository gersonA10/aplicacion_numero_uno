import 'package:aplicacion_numero_uno/models/buscador_pagos_pendientes_model.dart';
import 'package:aplicacion_numero_uno/presentation/screens/news/news_home_screen.dart';
import 'package:aplicacion_numero_uno/presentation/screens/seleccionar_detalle_a_pagar.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginProvider extends ChangeNotifier {
  final dio = Dio();
  String baseURL = 'https://test.emi.edu.bo';


  List<Item> listaPagosPendientes = [];
  String ci = '';

  searchIDUser(String idUser, BuildContext context) async {

    final data = {
      "cliente": idUser,
      "searchCode": 1,
    };
    final headers = {
      'token': '6e61981328fd8d27be1347a1e1bbd6a818d7ea5c',
      'Content-Type': 'application/json'
    };

  try {
    final response = await dio.post(
      '$baseURL/buscador',
      data: data,
      options: Options(headers: headers),
    );

    final res = BuscadorPagosPendientes.fromJson(response.data);

    listaPagosPendientes.addAll(res.items);

    ci = res.cliente.ci;

     // ignore: use_build_context_synchronously
    context.go(SeleccionarDetalleScreen.path);

    //  print(res);

    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        //Mostrar Dialogo
       showDialog(
        // ignore: use_build_context_synchronously
        context: context,
        builder: (context){
          return AlertDialog(
            title: const Text("Usuario no encontrado"),
            content: const Text('Dolore ipsum commodo duis aliqua ullamco.'),
            actions: [
              TextButton(onPressed: (){context.pop();}, child: const Text("Volver a intentar"))
            ],
          );
        },
      );
      } else {
        //Manjear otros error
      }
    }
    catch (e) {
      // print(e); 
    }

  }
}
