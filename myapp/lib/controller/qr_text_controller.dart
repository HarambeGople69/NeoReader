import 'package:get/get.dart';

class QrTextController extends GetxController {
  var text = "".obs;

  void clearText() {
    text.value = "";
  }

  void changeText(String textValue) {
    text.value = textValue;
  }
}
