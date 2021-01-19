import 'package:get/get.dart';
import 'package:tornaument/pages/detalleTorneo/detalle_torneo_controller.dart';

class DetalleTorneoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetalleTorneoController());
  }
}
