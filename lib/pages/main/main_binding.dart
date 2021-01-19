import 'package:get/get.dart';
import 'package:tornaument/pages/main/main_controller.dart';

class MainBinging extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainController());
  }
}
