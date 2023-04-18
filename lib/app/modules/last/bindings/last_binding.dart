import 'package:get/get.dart';

import '../controllers/last_controller.dart';

class LastBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LastController>(
      () => LastController(),
    );
  }
}
