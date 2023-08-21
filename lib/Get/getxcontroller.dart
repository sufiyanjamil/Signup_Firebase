import 'package:flutter_firebase_2/Get/loginController.dart';
import 'package:flutter_firebase_2/Get/loginwithphonecont.dart';
import 'package:flutter_firebase_2/Get/postcontroller.dart';
import 'package:flutter_firebase_2/Get/splashcontroller.dart';

import 'package:get/get.dart';
import "SignUpcontroller.dart";

class Geto extends GetxController {
  SignUp signup = SignUp();
  Postcontroller post = Postcontroller();
  LoginController login = LoginController();
  SplashController splash = SplashController();
  LoginwithphonenoController logph = LoginwithphonenoController();
}
