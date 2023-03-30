// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shop_application_1/shaerd/my_const.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(33.0),
          child: Column(
            children: [
              const SizedBox(
                height: 64,
              ),
              MyTextfilde(
                TextInputTypee: TextInputType.emailAddress,
                ispassword: false,
                hinttexttt: "Enter Your Email: ",
              ),
              const SizedBox(
                height: 30,
              ),
              MyTextfilde(
                TextInputTypee: TextInputType.text,
                ispassword: true,
                hinttexttt: "Enter Your passwrd: ",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
