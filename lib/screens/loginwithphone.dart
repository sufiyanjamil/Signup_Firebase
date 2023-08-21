import 'package:flutter/material.dart';
import 'package:flutter_firebase_2/Get/getxcontroller.dart';
import 'package:flutter_firebase_2/Widgets/Roundbtn.dart';
import 'package:get/get.dart';

class Loginwithphoneno extends StatelessWidget {
  final phonecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Geto get = Get.put(Geto());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        title: const Text(
          "Login with phone",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            TextFormField(
              controller: phonecontroller,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please Enter Email";
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
                hintText: "Please Enter your Phone Number",
                hintStyle: TextStyle(color: Colors.deepPurple),
                labelText: "Phone No",
                labelStyle: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Roundbutton(
                txt: "Login with phone no",
                onTap: () {
                  get.logph.verifyphoneno(phonecontroller.text);
                })
          ],
        ),
      ),
    );
  }
}
