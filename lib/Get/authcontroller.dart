import 'package:get/get.dart';

class AuthController extends GetxController {
  var isLoggedIn = false.obs;

  void login() {
    // Simulate login
    isLoggedIn.value = true;
  }

  void logout() {
    // Simulate logout
    isLoggedIn.value = false;
  }
}
