import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class BaseController extends GetxController {
  RxInt counter = 0.obs;
  final name = 'amit mallah'.obs;
  RxBool isAuthenticated = true.obs;

  @override
  void onInit() {
    super.onInit();
    name.value = 'amitchandra';
  }

  @override
  void onClose() {
    name.value = '';
    super.onClose();
  }

  void changeName() => name.value = 'amitchandra mallah';
  incrementCounter() => counter++;
}
