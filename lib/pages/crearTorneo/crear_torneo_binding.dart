import 'package:get/get.dart';
import 'package:tornaument/pages/crearTorneo/crear_torneo_controller.dart';

class CrearTorneoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CrearTorneoController());
  }
}
