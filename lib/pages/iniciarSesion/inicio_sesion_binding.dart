import 'package:get/get.dart';
import 'package:tornaument/pages/iniciarSesion/inicio_sesion_controller.dart';

class IniciarSessionBinging extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IniciarSessionController());
  }
}
