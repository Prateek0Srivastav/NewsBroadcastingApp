import 'package:demo_project/controller/bussiness_controller.dart';
import 'package:demo_project/controller/home_controller.dart';
import 'package:demo_project/controller/tech_controller.dart';
import 'package:get/get.dart';
import '../controller/entertainment_controller.dart';
import '../controller/health_controller.dart';
import '../controller/sports_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => BussinessController());
    Get.lazyPut(() => TechController());
    Get.lazyPut(() => HealthController());
    Get.lazyPut(() => EntertainmentController());
    Get.lazyPut(() => SportController());
  }
}
