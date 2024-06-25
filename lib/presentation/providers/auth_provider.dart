import 'package:aplicacion_numero_uno/models/login_response.dart';
import 'package:aplicacion_numero_uno/presentation/screens/login_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider extends ChangeNotifier {


  final dio = Dio();
  String baseURL = 'https://test.emi.edu.bo';

  //Crear funcion para realizar mi solicitud
  login(String username, String password) async {
    
    SharedPreferences prefs = await SharedPreferences.getInstance();
     


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
      final res = LoginResponse.fromJson(response.data);
      prefs.setString('token', res.token);
    
    } 
  }

   logOut(BuildContext context) async {
    
    SharedPreferences prefs = await SharedPreferences.getInstance();
    context.go(LoginScreen.path);
    prefs.clear();
  }

  //   buscadorMatricula(String matricula) async {
  //   final response = await dio.post(
  //     "$baseURL/buscador", 
  //     data: {
  //       "matricula": matricula,
  //     },
  //   );

  //   if (response.statusCode == 200) {
  //     final res = ResponseApi.fromJson(response.data);
  //     print(res.token);
  //   } else if (response.data == 400){
  //     //Mostrar un dialogo que diga errores
  //   }
  // }
}