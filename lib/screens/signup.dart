import 'package:flutter/material.dart';
import 'package:flutter_firebase_2/Get/getxcontroller.dart';

import 'package:get/get.dart';

import '../Widgets/Roundbtn.dart';
import 'loginscreen.dart';

// ignore: must_be_immutable
class Signupscreen extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();
  final Geto get = Get.put(Geto());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async {
          Get.back();
          return true;
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            elevation: 0,
            title: const Text(
              "SIGN UP",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            centerTitle: true,
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 100),
              child: Column(
                children: [
                  Form(
                    key: _formkey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormField(
                            controller: emailController,
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
                                borderSide:
                                    BorderSide(color: Colors.deepPurple),
                              ),
                              hintText: "Please Enter your Email Address",
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelText: "Email Address",
                              labelStyle: TextStyle(color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            controller: passwordController,
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
                                borderSide:
                                    BorderSide(color: Colors.deepPurple),
                              ),
                              hintText: "Please Enter your Password",
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelText: "Password",
                              labelStyle: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Roundbutton(
                    txt: "SignUp",
                    onTap: () {
                      if (_formkey.currentState!.validate()) {
                        get.signup.registerTestUser(
                            emailController.text.toString(),
                            passwordController.text.toString());
                        //  _registerTestUser();
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account?"),
                      TextButton(
                        onPressed: () {
                          Get.to(Loginscreen());
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.deepPurple),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// 