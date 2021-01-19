import 'package:get/get.dart';
import 'package:tornaument/pages/perfilGamer/perfil_gamer_controller.dart';
import 'package:tornaument/pages/perfilPropio/perfil_propio_controller.dart';

class PerfilPropioBinging extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PerfilPropioController());
  }
}
