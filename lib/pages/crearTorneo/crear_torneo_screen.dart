import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tornaument/pages/crearTorneo/crear_torneo_controller.dart';
import 'package:tornaument/widgets/export.dart';
import 'package:tornaument/widgets/formatoBoton.dart';

class CrearTorneoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CrearTorneoController>(
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
                  IconNavegacion(
                    onTap: () => Get.back(),
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Crear torneo",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Crear un torneo, define un premio, asocia un videojuego e invita a tus amigos",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  //
                  SizedBox(
                    height: 20,
                  ),

                  // Contenido del segundo container
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(height: 20),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 1),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 8,
                                    spreadRadius: 1)
                              ]),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Titulo del torneo",
                            ),
                            keyboardType: TextInputType.name,
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 1),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 8,
                                    spreadRadius: 1)
                              ]),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Juego asociado",
                            ),
                            keyboardType: TextInputType.text,
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 1),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 8,
                                    spreadRadius: 1)
                              ]),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Cantidad de fama a ganar (10 - 100)",
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 1),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 8,
                                    spreadRadius: 1)
                              ]),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Terminos y condiciones",
                            ),
                            keyboardType: TextInputType.text,
                            maxLines: 4,
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 1),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 8,
                                    spreadRadius: 1)
                              ]),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Premio principal",
                            ),
                            keyboardType: TextInputType.text,
                            maxLines: 2,
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 1),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 8,
                                    spreadRadius: 1)
                              ]),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Premios secundarios",
                            ),
                            keyboardType: TextInputType.text,
                            maxLines: 4,
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 1),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 8,
                                    spreadRadius: 1)
                              ]),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Calendario de juego",
                            ),
                            keyboardType: TextInputType.text,
                            maxLines: 4,
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 1),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 8,
                                    spreadRadius: 1)
                              ]),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Cantidad maxima de jugadores",
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Checkbox(
                              value: false,
                              onChanged: (value) => print(value),
                              activeColor: Colors.deepOrangeAccent,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text("Torneo es privado")
                          ],
                        ),
                        SizedBox(height: 20),
                        Tbuton(
                          color: Theme.of(context).primaryColor,
                          function: () => print(""),
                          label: Text(
                            "Crear torneo",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ])))),
      ),
    );
  }
}
