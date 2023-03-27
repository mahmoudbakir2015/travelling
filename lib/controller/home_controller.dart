import 'package:get/get.dart';

class HomeController extends GetxController {
  int _currentBage = 0;
  int get currentBage => _currentBage;

  changeCurrentBage(int index) {
    _currentBage = index;
    update();
  }
}
