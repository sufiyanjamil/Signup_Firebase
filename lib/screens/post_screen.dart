import 'package:flutter/material.dart';
import 'package:flutter_firebase_2/Get/getxcontroller.dart';
import 'package:get/get.dart';

class Postscreen extends StatelessWidget {
  const Postscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Geto get = Get.put(Geto());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Text(
            "Post Screen",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  get.post.getpost();
                },
                icon: Icon(
                  Icons.logout_outlined,
                  color: Colors.white,
                ))
          ],
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Icon(
                Icons.home_filled,
                size: 100,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
