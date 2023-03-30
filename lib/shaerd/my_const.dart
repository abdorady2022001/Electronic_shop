// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextfilde extends StatelessWidget {
  const MyTextfilde({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: TextInputTypee,
        obscureText: ispassword,
        decoration: InputDecoration(
          hintText: hinttexttt,
          // To delete borders
          enabledBorder: OutlineInputBorder(
            borderSide: Divider.createBorderSide(context),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          // fillColor: Colors.red,
          filled: true,
          contentPadding: const EdgeInsets.all(8),
        ));
  }
}
