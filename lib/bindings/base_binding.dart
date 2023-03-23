import 'package:get/instance_manager.dart';
import 'package:getx_demo/controllers/base_controller.dart';

class BaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BaseController(), permanent: true);
  }
}
