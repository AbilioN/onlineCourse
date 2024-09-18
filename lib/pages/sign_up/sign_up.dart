import 'package:another/common/widgets/button_widgets.dart';
import 'package:another/common/widgets/components.dart';
import 'package:another/common/widgets/text_widgets.dart';
import 'package:another/pages/sign_in/widgets/sign_in_widgets.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
          child: Scaffold(
              appBar: Components.buildAppBar(),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const Center(
                      child: Text14(
                          text: "Enter your details below & free sign up"),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    // email
                    Components.appTextField(
                        text: "User name",
                        iconName: "assets/icons/user.png",
                        hintText: "Enter your user name"),
                    const SizedBox(
                      height: 20,
                    ),
                    // email
                    Components.appTextField(
                        text: "Email",
                        iconName: "assets/icons/user.png",
                        hintText: "Enter your email address"),
                    const SizedBox(
                      height: 20,
                    ),
                    Components.appTextField(
                      text: "Password",
                      iconName: "assets/icons/lock.png",
                      hintText: "Enter your password",
                      obscureTexts: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Components.appTextField(
                      text: "Password Confirmation",
                      iconName: "assets/icons/lock.png",
                      hintText: "Confirm your password",
                      obscureTexts: true,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 25),
                      child: const Text14(
                          text:
                              "By creating an account you are agreeing with our terms of condition"),
                    ),

                    const SizedBox(
                      height: 100,
                    ),

                    Center(
                      child: ButtonWidgets.appButton(
                        buttonName: "Register",
                      ),
                    )
                  ],
                ),
              ))),
    );
  }
}
