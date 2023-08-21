import 'package:flutter/material.dart';
import 'package:flutter_firebase_2/Get/getxcontroller.dart';
import 'package:flutter_firebase_2/screens/forgetpassword.dart';
import 'package:flutter_firebase_2/screens/loginwithphone.dart';
import 'package:flutter_firebase_2/screens/signup.dart';
// ignore: unused_import

import 'package:flutter_firebase_2/widgets/Roundbtn.dart';
import 'package:get/get.dart';

class Loginscreen extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  Loginscreen({super.key});
  @override
  Widget build(BuildContext context) {
    final Geto geto = Get.put(Geto());
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/signup.png",
                fit: BoxFit.cover,
              ),
              Form(
                key: _formkey,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 20, bottom: 10),
                      child: TextFormField(
                        controller: emailcontroller,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Email";
                          }
                          return null;
                        },
                        style: const TextStyle(
                            color: Color.fromARGB(255, 36, 2, 95)),
                        cursorColor: Colors.deepPurple,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.mail_outline,
                            color: Colors.black,
                          ),
                          focusColor: Colors.deepPurple,
                          hoverColor: Colors.deepPurple,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepPurple),
                          ),
                          hintText: "Please Enter your Email Address",
                          hintStyle: TextStyle(color: Colors.deepPurple),
                          labelText: "Email Address",
                          labelStyle: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 20, bottom: 10),
                      child: TextFormField(
                        controller: passwordcontroller,
                        obscureText: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Password";
                          }
                          return null;
                        },
                        style: const TextStyle(
                            color: Color.fromARGB(255, 36, 2, 95)),
                        cursorColor: Colors.deepPurple,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: Colors.black,
                          ),
                          focusColor: Colors.deepPurple,
                          hoverColor: Colors.deepPurple,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepPurple),
                          ),
                          hintText: "Please Enter your Password",
                          hintStyle: TextStyle(color: Colors.deepPurple),
                          labelText: "Password",
                          labelStyle: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Roundbutton(
                txt: "Login",
                onTap: () {
                  if (_formkey.currentState!.validate()) {
                    geto.login.loginuser(emailcontroller.text.toString(),
                        passwordcontroller.text.toString());
                  }
                },
              ),
              SizedBox(
                height: 3,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 48),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {
                      Get.to(ForgetpasswordScreen());
                    },
                    child: const Text(
                      "Forget Password?",
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 05,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      Get.to(Signupscreen());
                    },
                    child: const Text(
                      "SignUp",
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 05,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 48, right: 48, bottom: 15),
                child: InkWell(
                  onTap: () {
                    Get.to(Loginwithphoneno());
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                        child: Text(
                      "Login with Phone Number",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
