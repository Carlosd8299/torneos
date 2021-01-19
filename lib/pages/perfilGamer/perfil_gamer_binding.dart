import 'package:get/get.dart';
import 'package:tornaument/pages/perfilGamer/perfil_gamer_controller.dart';

class PerfilGamerBinging extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PerfilGamerController());
  }
}
