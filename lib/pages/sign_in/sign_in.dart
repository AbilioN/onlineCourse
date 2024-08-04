import 'package:another/common/widgets/text_widgets.dart';
import 'package:another/pages/sign_in/widgets/sign_in_widgets.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
          child: Scaffold(
              appBar: SignInComponents.buildAppBar(),
              backgroundColor: Colors.white,
              body: Column(
                children: [
                  SignInComponents.thirdPartyLogin(),
                  Text14(text: "Or use your email to Login")
                ],
              ))),
    );
  }
}
