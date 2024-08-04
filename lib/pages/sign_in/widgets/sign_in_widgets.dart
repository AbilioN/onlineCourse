import 'package:another/common/utils/colors.dart';
import 'package:another/common/widgets/text_widgets.dart';
import 'package:flutter/material.dart';

class SignInComponents {
  static AppBar buildAppBar() {
    return AppBar(
      bottom: PreferredSize(
        child: Container(
          color: Colors.red,
          height: 1,
        ),
        preferredSize: Size.fromHeight(1),
      ),
      title: const Text16(
        text: "Login",
        color: AppColors.primaryText,
      ),
    );
  }

  static Widget thirdPartyLogin() {
    return Container(
      margin: EdgeInsets.only(left: 80, right: 80, top: 40, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _loginButton("assets/icons/google.png"),
          _loginButton("assets/icons/apple.png"),
          _loginButton("assets/icons/facebook.png"),
        ],
      ),
    );
  }

  static Widget _loginButton(String imagePath) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 40,
        width: 40,
        child: Image.asset(imagePath),
      ),
    );
  }
}
