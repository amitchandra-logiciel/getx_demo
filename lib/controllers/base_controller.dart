import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Controller extends GetxController {
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

  final name = 'amit mallah'.obs;

  void changeName() => name.value = 'amitchandra mallah';
}
