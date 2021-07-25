import 'package:get/get.dart';
import 'package:json_demoo/controller/user_controller.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(UserController(), permanent: true);
  }
}
