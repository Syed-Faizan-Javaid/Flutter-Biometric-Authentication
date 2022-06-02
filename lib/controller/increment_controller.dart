import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  final textController = TextEditingController();

  var count = 0.obs;
  RxString name = "".obs;

  increment() => count++;
  textChange() {
    textController.addListener(() {
      name.value = textController.text;
    });
  }
}
