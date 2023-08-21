import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Get/getxcontroller.dart';
import '../widgets/Roundbtn.dart';

// ignore: must_be_immutable
class Verifycodeno extends StatelessWidget {
  String verificationId;
  Verifycodeno({super.key, required this.verificationId});
  final codecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Geto get = Get.put(Geto());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        title: const Text(
          "Verifying Phone Number",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            TextFormField(
              controller: codecontroller,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please Enter Code";
                }
                return null;
              },
              style: const TextStyle(color: Color.fromARGB(255, 36, 2, 95)),
              cursorColor: Colors.deepPurple,
              keyboardType: TextInputType.phone,
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
                hintText: "Please Enter 6-digit code",
                hintStyle: TextStyle(color: Colors.deepPurple),
                labelText: "Code",
                labelStyle: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Roundbutton(
              txt: "Verifying Code",
              onTap: () {
                get.logph
                    .vrifycode(codecontroller.text.toString(), verificationId);
              },
            ),
          ],
        ),
      ),
    );
  }
}
