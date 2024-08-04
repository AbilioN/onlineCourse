import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
          child: Scaffold(
        appBar: AppBar(),
        backgroundColor: Colors.white,
        body: Center(child: Text("Sign in page")),
      )),
    );
  }
}
