import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter_firebase_2/screens/post_screen.dart';
import 'package:get/get.dart';

import '../screens/loginscreen.dart';

class SplashController extends GetxController {
  final user = FirebaseAuth.instance.currentUser;
  void onInit() {
    super.onInit();
    initializeapp();
  }

  void initializeapp() {
    if (user != null) {
      Timer(Duration(seconds: 3), () {
        Get.offAll(Postscreen());
      });
    } else {
      Timer(Duration(seconds: 3), () {
        Get.offAll(Loginscreen());
      });
    }
  }
}
