import 'package:get/get.dart';
import 'package:tornaument/pages/crear_juego/crear_juego_controller.dart';

class CrearJuegoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CrearJuegoController());
  }
}
