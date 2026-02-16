// favorites_controller.dart
import 'package:get/get.dart';

class FavoritesController extends GetxController {
  RxList<String> favorites = <String>[].obs;

  void addFavorite(String item) {
    favorites.add(item);
    update();
  }

  void removeFavorite(String item) {
    favorites.remove(item);
    update();
  }

  int get favoritesCount => favorites.length;
}