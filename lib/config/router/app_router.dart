import 'package:aplicacion_numero_uno/presentation/screens/login_screen.dart';
import 'package:aplicacion_numero_uno/presentation/screens/news/news_home_screen.dart';
import 'package:aplicacion_numero_uno/presentation/screens/pago_de_cuentas_screen.dart';
import 'package:aplicacion_numero_uno/presentation/screens/seleccionar_detalle_a_pagar.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
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
  ],
);
