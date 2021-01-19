import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:tornaument/pages/home/Screens/home_juegos.dart';
import 'package:tornaument/pages/home/Screens/home_torneos.dart';
import 'package:tornaument/pages/home/home_controller.dart';
import 'package:tornaument/routes/routes.dart';
import 'package:tornaument/widgets/barra_busqueda.dart';
import 'package:tornaument/widgets/custom_app_bar.dart';
import 'package:tornaument/widgets/export.dart';

import 'Screens/home_usuarios.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _screens = [
    HomeTorneos(),
    HomeJuego(),
    HomeUsuario(),
  ];
  final List<IconData> _icons = const [
    (FontAwesomeIcons.trophy),
    (FontAwesomeIcons.gamepad),
    (FontAwesomeIcons.user),
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return GetBuilder<HomeController>(
        builder: (_) => DefaultTabController(
              length: _icons.length,
              child: Scaffold(
                backgroundColor: Colors.white,
                appBar: PreferredSize(
                    child: SafeArea(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Notificacion(
                                hasNotification: true,
                                onTap: () => Get.back(),
                              ),
                              BarraBusqueda(
                                hint: "Buscar un torneo",
                                width: 280,
                              ),
                              InkWell(
                                onTap: () => Get.toNamed(AppRoutes.PERFILGAMER),
                                child: CircleAvatar(
                                  radius: 25,
                                  backgroundImage: NetworkImage(
                                    'https://jcmagazine.com/wp-content/uploads/2020/08/asus-gamers.jpg',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          CustomAppBar(
                              selectedIndex: _selectedIndex,
                              icons: _icons,
                              onTap: (index) =>
                                  setState(() => _selectedIndex = index)),
                        ],
                      ),
                    ),
                    preferredSize: Size(
                      screenSize.width,
                      100.0,
                    )),
                body: IndexedStack(
                  index: _selectedIndex,
                  children: _screens,
                ),
              ),
            ));
  }
}
