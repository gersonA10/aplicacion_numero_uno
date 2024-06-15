import 'package:aplicacion_numero_uno/models/buscador_pagos_pendientes_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {


  final dio = Dio();
  String baseURL = 'https://test.emi.edu.bo';

  Future<BuscadorPagosPendientes> searchIDUser(String idUser) async {
    final data = {"cliente": idUser, "searchCode": 1};
    final headers = {
      'token': '8a2438ddc252995f4553869be5bf952ba349982f',
      'Content-Type': 'application/json'
    };

    final response = await dio.post(
      '$baseURL/buscador',
      data: data,
      options: Options(headers: headers),
    );

   final res = BuscadorPagosPendientes.fromJson(response.data);


   return res;

  }
}
