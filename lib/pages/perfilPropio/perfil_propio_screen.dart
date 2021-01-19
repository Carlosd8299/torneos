import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:tornaument/pages/perfilGamer/perfil_gamer_controller.dart';
import 'package:tornaument/pages/perfilPropio/perfil_propio_controller.dart';
import 'package:tornaument/routes/routes.dart';
import 'package:tornaument/widgets/export.dart';

class PerfilPropioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PerfilPropioController>(
        builder: (_) => Scaffold(
              floatingActionButton: FloatingActionButton(
                child: Row(
                  children: [
                    Icon(Icons.add),
                    FaIcon(FontAwesomeIcons.trophy),
                  ],
                ),
                onPressed: () => Get.toNamed(AppRoutes.CREARTORNEO),
                splashColor: Colors.deepOrange,
              ),
              body: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    backgroundColor: Colors.white,
                    actions: [
                      IconButton(
                          icon: Icon(
                            Icons.edit,
                            color: Colors.black87,
                            size: 30,
                          ),
                          onPressed: () => print("")),
                      Notificacion(
                        hasNotification: true,
                        onTap: () => print(""),
                      )
                    ],
                    leading: IconButton(
                        onPressed: () => Get.back(),
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black87,
                        )),
                    centerTitle: true,
                    title: Text("Tornaument",
                        style: Theme.of(context).textTheme.headline2),
                    floating: true,
                    elevation: 0.0,
                  ),
                  SliverToBoxAdapter(
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(
                        'https://jcmagazine.com/wp-content/uploads/2020/08/asus-gamers.jpg',
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                      child: Text("Pedro Diaz",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline2)),
                  /* SliverToBoxAdapter(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.trophy,
                        color: Colors.deepPurpleAccent,
                      ),
                      Text(
                        "1",
                        style: TextStyle(fontSize: 22),
                      ),
                      FaIcon(
                        FontAwesomeIcons.gamepad,
                        color: Colors.deepOrangeAccent,
                      ),
                      Text(
                        "1",
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  )), */
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 20,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: IntrinsicHeight(
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                child: Column(children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.deepOrangeAccent),
                                    padding: EdgeInsets.all(20),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.star,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                        Text(
                                          "Logros ganados",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.grey),
                                    padding: EdgeInsets.all(20),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.gamepad,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                        Text(
                                          "Juegos \nfavoritos",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6,
                                        ),
                                      ],
                                    ),
                                  )
                                ]),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.deepPurpleAccent),
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.trophy,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    Text(
                                      "Ver \nlos \ntorneos \ninscritos",
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                    ),
                                  ],
                                ),
                              )),
                            ]),
                      ),
                    ),
                  ),
                ],
              ),
            ));
  }
}
