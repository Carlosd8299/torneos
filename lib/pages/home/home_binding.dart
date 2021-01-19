import 'package:get/get.dart';
import 'package:tornaument/pages/home/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
