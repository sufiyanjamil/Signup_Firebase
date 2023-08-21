import 'package:flutter/material.dart';
import 'package:flutter_firebase_2/screens/loginscreen.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Postcontroller {
  final auth = FirebaseAuth.instance;
  void getpost() {
    auth.signOut();
    Get.snackbar("LOG OUT", "Successfully Logout",
        colorText: Colors.white, backgroundColor: Colors.lightBlueAccent);
    Get.to(Loginscreen());
  }
}
