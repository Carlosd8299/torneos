import 'package:get/get.dart';
import 'package:tornaument/pages/detalleTorneo/detalle_torneo_controller.dart';

import 'detalle_juego_controller.dart';

class DetalleJuegoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetalleJuegoController());
  }
}
