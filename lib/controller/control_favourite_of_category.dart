import 'package:get/get.dart';

class FavouriteCategoryController extends GetxController {
  List favourite = [];
  bool isCliked = false;

  void changeStatus() {
    isCliked = !isCliked;
    update();
  }

  void addToFav(dynamic x) {
    favourite.add(x);
  }

  void removeFav(dynamic x) {
    favourite.remove(x);
  }
}
