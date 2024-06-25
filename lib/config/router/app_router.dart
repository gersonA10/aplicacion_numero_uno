import 'package:aplicacion_numero_uno/presentation/screens/login_screen.dart';
import 'package:aplicacion_numero_uno/presentation/screens/news/news_home_screen.dart';
import 'package:aplicacion_numero_uno/presentation/screens/pago_de_cuentas_screen.dart';
import 'package:aplicacion_numero_uno/presentation/screens/seleccionar_detalle_a_pagar.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppRouter {
  static final appRouter = GoRouter(
  initialLocation: '/',
  redirect: (context, state) async {
    final bool isAuth = await _checkToken();
    print(isAuth);

    if (!isAuth) {
      return LoginScreen.path;
    } else {
      return SeleccionarDetalleScreen.path;
    }
  },
  routes: [
    GoRoute(
      path: LoginScreen.path,
      name: LoginScreen.name,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: SeleccionarDetalleScreen.path,
      name: SeleccionarDetalleScreen.name,
      builder: (context, state) => const SeleccionarDetalleScreen(),
    ),
     GoRoute(
      path: PagoCuentasScreen.path,
      name: PagoCuentasScreen.name,
      builder: (context, state) => const PagoCuentasScreen(),
    ),
    GoRoute(
      path: NewsHomeScreen.path,
      name: NewsHomeScreen.name,
      builder: (context, state) => const NewsHomeScreen(),
    ),
    //  GoRoute(
    //   path: DetailScreen.path,
    //   name: DetailScreen.name,
    //   builder: (context, state) => const DetailScreen(),
    // ),
  ],
);

static Future<bool> _checkToken()async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? authToken = prefs.getString('token');

  if (authToken == null) return false;
  return true;
}


}



