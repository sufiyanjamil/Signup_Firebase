import 'package:flutter/material.dart';

import 'package:flutter_firebase_2/Get/splashcontroller.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Splashscreen extends StatelessWidget {
  Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    SplashController sp = Get.put(SplashController());
    sp.onInit();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 40, right: 20),
              child: const Text(
                "FIREBASE WORK",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
