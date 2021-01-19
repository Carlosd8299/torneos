import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tornaument/pages/crear_juego/crear_juego_controller.dart';
import 'package:tornaument/widgets/export.dart';
import 'package:tornaument/widgets/formatoBoton.dart';

class CrearJuegoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CrearJuegoController>(
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
                    " Crear Juego",
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
                              hintText: "Titulo del videojuego",
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
                              hintText: "Descripcion",
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Foto de perfil del juego"),
                              FlatButton(
                                  textColor: Colors.white,
                                  color: Colors.deepPurpleAccent,
                                  onPressed: () => print("object"),
                                  child: Text("Seleccionar foto"))
                            ],
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Banner del juego"),
                              FlatButton(
                                  textColor: Colors.white,
                                  color: Colors.deepPurpleAccent,
                                  onPressed: () => print("object"),
                                  child: Text("Seleccionar foto"))
                            ],
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
                            child: Row(
                              children: [
                                DropdownButton(
                                  items: null,
                                  onChanged: null,
                                  icon: Icon(Icons.arrow_drop_down),
                                  hint: Text("Seleccionar Genero del juego"),
                                ),
                              ],
                            )),
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
