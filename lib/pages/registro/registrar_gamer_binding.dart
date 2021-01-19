import 'package:get/get.dart';
import 'package:tornaument/pages/registro/registrar_gamer_controller.dart';

class RegistroGamerBinging extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistroGamerController());
  }
}
