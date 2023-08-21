import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ForgetpasswordCont extends GetxController {
  final auth = FirebaseAuth.instance;
  void forgetpassword(String email) {
    auth
        .sendPasswordResetEmail(
          email: email,
        )
        .then((value) => Get.snackbar("Email Sended", "Email send Successfully",
            colorText: Colors.white, backgroundColor: Colors.lightBlueAccent))
        .onError(
          (error, stackTrace) => Get.snackbar(
            "Error",
            error.toString(),
            colorText: Colors.black,
            backgroundColor: Colors.red,
            snackPosition: SnackPosition.BOTTOM,
          ),
        );
  }
}
