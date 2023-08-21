import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_2/screens/post_screen.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LoginController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
//  RxBool isloading = false.obs;

  void loginuser(String email, password) async {
    // isloading = true.obs;
    await _auth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) => {
              //  isloading = true.obs,
              Get.snackbar("LOGIN", "Login Successfully",
                  colorText: Colors.white, backgroundColor: Colors.blueAccent),
              Get.to(Postscreen()),
            })
        .onError((error, stackTrace) => {
              //     isloading = false.obs,
              Get.snackbar("Error", error.toString(),
                  colorText: Colors.white,
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.red)
            });
  }
}
