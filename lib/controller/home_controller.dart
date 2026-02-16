// home_controller.dart
import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectedIndex = 0.obs; // Observable variable

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}