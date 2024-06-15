import 'package:aplicacion_numero_uno/models/response_api.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {


  final dio = Dio();
  String baseURL = 'https://test.emi.edu.bo';

  //Crear funcion para realizar mi solicitud
  login(String username, String password) async {
    final response = await dio.post(
      "$baseURL/iniciarsesion", 
      data: {
        "username": username,
        "password": password
      },
      options: Options(
        headers: {
          
        }
      )
    );

    if (response.statusCode == 200) {
      final res = ResponseApi.fromJson(response.data);
      print(res.token);
    } 
  }

    buscadorMatricula(String matricula) async {
    final response = await dio.post(
      "$baseURL/buscador", 
      data: {
        "matricula": matricula,
      },
    );

    if (response.statusCode == 200) {
      final res = ResponseApi.fromJson(response.data);
      print(res.token);
    } else if (response.data == 400){
      //Mostrar un dialogo que diga errores
    }
  }
}