import 'package:flutter/material.dart';
import 'package:flutter_firebase_2/screens/post_screen.dart';
import 'package:flutter_firebase_2/screens/splashscren.dart';

import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Get/authcontroller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthController _authController = Get.put(AuthController());

    // Geto geto = Get.put(Geto());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      theme: ThemeData(textTheme: GoogleFonts.robotoCondensedTextTheme()),
      themeMode: ThemeMode.system,
      home: GetBuilder<AuthController>(
        builder: (_) {
          if (_authController.isLoggedIn.value) {
            return WillPopScope(
              onWillPop: () async {
                // Prevent app from closing, navigate to LoginScreen instead
                _authController.logout();
                return false;
              },
              child: Postscreen(),
            );
          } else {
            return Splashscreen();
          }
        },
      ),
    );
  }
}
