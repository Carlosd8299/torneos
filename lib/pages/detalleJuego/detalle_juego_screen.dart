import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:tornaument/pages/crearTorneo/crear_torneo_controller.dart';
import 'package:tornaument/pages/detalleTorneo/detalle_torneo_controller.dart';
import 'package:tornaument/widgets/export.dart';

import 'detalle_juego_controller.dart';

class DetalleJuegoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetalleJuegoController>(
      builder: (_) => Scaffold(
          appBar: PreferredSize(
            child: AppBar(
              elevation: 0.0,
              leading: IconNavegacion(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                onTap: () => Get.back(),
              ),
            ),
            preferredSize: Size.fromHeight(50),
          ),
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Image.network(
                    "https://www.xtrafondos.com/wallpapers/vertical/personajes-de-league-of-legends-4055.jpg"),
                Container(
                    margin: EdgeInsets.fromLTRB(0, 220, 0, 0), child: Cuerpo())
              ],
            ),
          )),
    );
  }
}

class Cuerpo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(100)),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //
          IconButton(
            icon: Icon(
              Icons.star,
              color: Colors.yellow,
              size: 40,
            ),
            onPressed: () => Get.back(),
          ),
          //
          Text(
            "League of Legends",
            style: Theme.of(context).textTheme.headline4,
          ),
          //
          SizedBox(height: 20),
          //
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FaIcon(
                FontAwesomeIcons.trophy,
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(width: 20),
              Text(
                "1",
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(width: 20),
              FaIcon(
                FontAwesomeIcons.gamepad,
                color: Colors.deepOrangeAccent,
              ),
              SizedBox(width: 20),
              Text(
                "1",
                style: TextStyle(fontSize: 22),
              ),
            ],
          ),
          //
          SizedBox(height: 20),
          //
          Text(
            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna.",
            style: Theme.of(context).textTheme.bodyText2,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
