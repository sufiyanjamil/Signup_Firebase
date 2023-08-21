import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SignUp {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void registerTestUser(String email, password) async {
    try {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {});

      Get.snackbar("SignUp", "SIgnUp Successfully",
          colorText: Colors.white, backgroundColor: Colors.lightBlueAccent);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Get.snackbar("Error", 'The password provided is less than 6',
            backgroundColor: Colors.red, snackPosition: SnackPosition.BOTTOM);
      } else if (e.code == 'email-already-in-use') {
        Get.snackbar("Error", 'The account already exists for that email.',
            backgroundColor: Colors.red, snackPosition: SnackPosition.BOTTOM);
      }
    } catch (e) {
      Get.snackbar("Error", e.toString(),
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red);
    }
  }
}
