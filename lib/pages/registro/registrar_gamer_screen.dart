import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tornaument/pages/registro/registrar_gamer_controller.dart';
import 'package:tornaument/routes/routes.dart';
import 'package:tornaument/widgets/export.dart';

class RegistroGamerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegistroGamerController>(
      builder: (_) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          backgroundColor: Color(0XFFF9F9F9),
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Registrate",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Únete a torneos creados por la comunidad",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  //
                  SizedBox(
                    height: 50,
                  ),
                  // Primer container de fondo, borde izquierdo
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                    child:
                        //Segundo container, contiene los campso
                        Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black38,
                                    blurRadius: 6,
                                    offset: Offset(1, 3))
                              ]),
                          child:
                              // Contenido del segundo container
                              Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(height: 20),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: "Nombre completo ",
                                ),
                                keyboardType: TextInputType.name,
                              ),
                              SizedBox(height: 20),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: "Nickname",
                                ),
                                keyboardType: TextInputType.name,
                              ),
                              SizedBox(height: 20),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: "Correo electronico ",
                                ),
                                keyboardType: TextInputType.emailAddress,
                              ),
                              SizedBox(height: 20),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: "Contraseña",
                                ),
                                keyboardType: TextInputType.name,
                                obscureText: true,
                              ),
                              SizedBox(height: 20),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: "Confirmar Contraseña",
                                ),
                                keyboardType: TextInputType.name,
                                obscureText: true,
                              ),
                              SizedBox(height: 20),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: "Numero Celular",
                                ),
                                keyboardType: TextInputType.phone,
                              ),
                              SizedBox(height: 20),
                              /*   */
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Tbuton(
                          color: Theme.of(context).primaryColor,
                          function: () => Get.toNamed(AppRoutes.HOME),
                          label: Text(
                            "Registrar",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(100)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
