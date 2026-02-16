import 'package:get/get.dart';

class Searchcontroller extends GetxController {
  var showFlight = true.obs;
  var showAttraction = false.obs;
  var showTaxi = false.obs;

  var showStay = false.obs;
  var showCar = false.obs;


void showStays() {
    showFlight.value = false;
    showAttraction.value = false;
    showTaxi.value = false;
    showStay.value = true;
    showCar.value = false;


  }

void showCars() {
    showFlight.value = false;
    showAttraction.value = false;
    showTaxi.value = false;
     showStay.value = false;
    showCar.value = true;
  }

  void showFlights() {
    showFlight.value = true;
    showAttraction.value = false;
    showTaxi.value = false;
     showStay.value = false;
    showCar.value = false;
  }

  void showAttractions() {
    showAttraction.value = true;
    showFlight.value = false;
    showTaxi.value = false;
     showStay.value = false;
    showCar.value = false;
  }

  void showTaxis() {
    showAttraction.value = false;
    showFlight.value = false;
    showTaxi.value = true;
     showStay.value = false;
    showCar.value = false;
  }
}
