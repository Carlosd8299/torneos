import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:tornaument/pages/crearTorneo/crear_torneo_binding.dart';
import 'package:tornaument/pages/crearTorneo/crear_torneo_screen.dart';
import 'package:tornaument/pages/crear_juego/crear_juego_binding.dart';
import 'package:tornaument/pages/crear_juego/crear_juego_screen.dart';
import 'package:tornaument/pages/detalleJuego/detalle_juego_binding.dart';
import 'package:tornaument/pages/detalleJuego/detalle_juego_screen.dart';
import 'package:tornaument/pages/detalleTorneo/detalle_torneo_binding.dart';
import 'package:tornaument/pages/detalleTorneo/detalle_torneo_screen.dart';
import 'package:tornaument/pages/home/home_binding.dart';
import 'package:tornaument/pages/home/home_screen.dart';
import 'package:tornaument/pages/iniciarSesion/inicio_sesion_binding.dart';
import 'package:tornaument/pages/iniciarSesion/inicio_sesion_screen.dart';
import 'package:tornaument/pages/perfilGamer/perfil_gamer_binding.dart';
import 'package:tornaument/pages/perfilGamer/perfil_gamer_screen.dart';
import 'package:tornaument/pages/perfilPropio/perfil_propio_binding.dart';
import 'package:tornaument/pages/perfilPropio/perfil_propio_screen.dart';
import 'package:tornaument/pages/registro/registrar_gamer_binding.dart';
import 'package:tornaument/pages/registro/registrar_gamer_screen.dart';
import 'package:tornaument/routes/routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.CREARJUEGO,
      page: () => CrearJuegoScreen(),
      binding: CrearJuegoBinding(),
    ),
    GetPage(
      name: AppRoutes.DETALLEJUEGO,
      page: () => DetalleJuegoScreen(),
      binding: DetalleJuegoBinding(),
    ),
    GetPage(
      name: AppRoutes.CREARTORNEO,
      page: () => CrearTorneoScreen(),
      binding: CrearTorneoBinding(),
    ),
    GetPage(
      name: AppRoutes.DETALLETORNEO,
      page: () => DetalleTorneoScreen(),
      binding: DetalleTorneoBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.INICIARSESION,
      page: () => IniciarSessionScreen(),
      binding: IniciarSessionBinging(),
    ),
    GetPage(
      name: AppRoutes.PERFILGAMER,
      page: () => PerfilGamerScreen(),
      binding: PerfilGamerBinging(),
    ),
    GetPage(
      name: AppRoutes.PERFILPROPIO,
      page: () => PerfilPropioScreen(),
      binding: PerfilPropioBinging(),
    ),
    GetPage(
      name: AppRoutes.REGISTRO,
      page: () => RegistroGamerScreen(),
      binding: RegistroGamerBinging(),
    ),
  ];
}
