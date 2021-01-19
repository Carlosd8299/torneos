import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tornaument/routes/routes.dart';
import '../../widgets/export.dart';
import 'package:tornaument/pages/main/main_controller.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (_) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
            body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/1.png",
                  height: 250,
                ),
                Text(
                  "Bienvenido a Tornaument",
                  style: Theme.of(context).textTheme.headline1,
                ),
                SizedBox(height: 10),
                Tbuton(
                  color: Theme.of(context).accentColor,
                  function: () => Get.toNamed(AppRoutes.INICIARSESION),
                  label: Text(
                    "Iniciar sesión",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                SizedBox(height: 10),
                Tbuton(
                  color: Theme.of(context).primaryColor,
                  function: () => Get.toNamed(AppRoutes.REGISTRO),
                  label: Text(
                    "Registrarme ahora",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                SizedBox(height: 10),
                Tbuton(
                  color: Theme.of(context).primaryColor,
                  function: () => Get.toNamed(AppRoutes.PERFILGAMER),
                  label: Text(
                    "Perfil gamer",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                SizedBox(height: 10),
                Tbuton(
                  color: Theme.of(context).primaryColor,
                  function: () => Get.toNamed(AppRoutes.PERFILPROPIO),
                  label: Text(
                    "Perfil propio",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                SizedBox(height: 10),
                Tbuton(
                  color: Theme.of(context).primaryColor,
                  function: () => Get.toNamed(AppRoutes.CREARJUEGO),
                  label: Text(
                    "Crear Juego",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                SizedBox(height: 10),
                Tbuton(
                  color: Theme.of(context).primaryColor,
                  function: () => Get.toNamed(AppRoutes.CREARTORNEO),
                  label: Text(
                    "Crear Torneo",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                SizedBox(height: 10),
                Tbuton(
                  color: Theme.of(context).primaryColor,
                  function: () => Get.toNamed(AppRoutes.DETALLETORNEO),
                  label: Text(
                    "Detalle torneo",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                SizedBox(height: 10),
                Tbuton(
                  color: Theme.of(context).primaryColor,
                  function: () => Get.toNamed(AppRoutes.DETALLEJUEGO),
                  label: Text(
                    "Detall juego",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  child: Image.asset(
                    "assets/2.png",
                    height: 200,
                  ),
                  margin: EdgeInsets.only(left: 240),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
