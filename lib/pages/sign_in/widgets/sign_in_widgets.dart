import 'package:another/common/utils/colors.dart';
import 'package:another/common/widgets/app_shadows.dart';
import 'package:another/common/widgets/image_widgets.dart';
import 'package:another/common/widgets/text_widgets.dart';
import 'package:flutter/material.dart';

class SignInComponents {
  static Widget thirdPartyLogin() {
    return Container(
      margin: const EdgeInsets.only(left: 80, right: 80, top: 40, bottom: 20),
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
      child: SizedBox(
        height: 40,
        width: 40,
        child: Image.asset(imagePath),
      ),
    );
  }
}
