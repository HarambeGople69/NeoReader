import 'package:get/get.dart';
import 'package:myapp/controller/qr_text_controller.dart';

class MyBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => QrTextController());
  }
}
