import 'package:another/common/widgets/text_widgets.dart';
import 'package:another/pages/sign_in/widgets/sign_in_widgets.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
          child: Scaffold(
              appBar: SignInComponents.buildAppBar(),
              backgroundColor: Colors.white,
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SignInComponents.thirdPartyLogin(),
                  const Center(
                    child: Text14(text: "Or use your email to Login"),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  // email
                  SignInComponents.appTextField(
                      text: "Email",
                      iconName: "assets/icons/user.png",
                      hintText: "Enter your email address"),
                  SizedBox(
                    height: 20,
                  ),
                  SignInComponents.appTextField(
                    text: "Password",
                    iconName: "assets/icons/lock.png",
                    hintText: "Enter your password",
                    obscureTexts: true,
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 25),
                    child: TextUnderline(text: "Forgot password?"),
                  ),
                ],
              ))),
    );
  }
}
