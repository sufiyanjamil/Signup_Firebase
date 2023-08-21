import 'package:flutter/material.dart';
import 'package:flutter_firebase_2/screens/post_screen.dart';
import 'package:flutter_firebase_2/screens/verifycode.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginwithphonenoController {
  final _auth = FirebaseAuth.instance;
  void verifyphoneno(String phoneno) {
    _auth.verifyPhoneNumber(
      phoneNumber: phoneno,
      verificationCompleted: (_) {},
      verificationFailed: (error) => Get.snackbar(
        "Error",
        error.toString(),
        colorText: Colors.black,
        backgroundColor: Colors.red,
        snackPosition: SnackPosition.BOTTOM,
      ),
      codeSent: (String verificationId, int? token) {
        Get.snackbar(
            "Login with Phone ", "Successfully login with phone Number",
            colorText: Colors.white, backgroundColor: Colors.lightBlueAccent);
        Get.to(Verifycodeno(verificationId: verificationId));
      },
      codeAutoRetrievalTimeout: (_) {},
    );
  }

  void vrifycode(String code, String verificationId) {
    final credential = PhoneAuthProvider.credential(
        smsCode: code, verificationId: verificationId);
    try {
      _auth.signInWithCredential(credential);
      Get.snackbar(
          "Verified Phone Number", "Successfully verified Phone Number",
          colorText: Colors.white, backgroundColor: Colors.lightBlueAccent);
      Get.to(Postscreen());
    } catch (e) {
      Get.snackbar(
        "Error",
        e.toString(),
        colorText: Colors.black,
        backgroundColor: Colors.red,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
