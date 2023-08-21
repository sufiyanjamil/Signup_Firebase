// ignore: file_names
// ignore: file_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Roundbutton extends StatelessWidget {
  final String txt;
  final bool loading;
  final VoidCallback onTap;

  Roundbutton({required this.txt, required this.onTap, this.loading = false});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 300,
        decoration: BoxDecoration(
            color: Colors.deepPurple, borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: loading
                ? CircularProgressIndicator(
                    strokeWidth: 2,
                  )
                : Text(
                    txt,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )),
      ),
    );
  }
}
