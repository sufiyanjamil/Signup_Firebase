import 'package:flutter/material.dart';
import 'package:flutter_firebase_2/Get/forgotpasswordcont.dart';
import 'package:get/get.dart';

import '../widgets/Roundbtn.dart';

class ForgetpasswordScreen extends StatelessWidget {
  ForgetpasswordScreen({super.key});
  final forgetpasscontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ForgetpasswordCont cont = Get.put(ForgetpasswordCont());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        title: const Text(
          "Forget Password",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 40,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            TextFormField(
              controller: forgetpasscontroller,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please Enter Email";
                }
                return null;
              },
              style: const TextStyle(color: Color.fromARGB(255, 36, 2, 95)),
              cursorColor: Colors.deepPurple,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.call,
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
                labelText: "Email",
                labelStyle: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Roundbutton(
                txt: "Login with phone no",
                onTap: () {
                  cont.forgetpassword(forgetpasscontroller.text);
                })
          ],
        ),
      ),
    );
  }
}
