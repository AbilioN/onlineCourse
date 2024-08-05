import 'package:another/common/utils/colors.dart';
import 'package:another/common/widgets/app_shadows.dart';
import 'package:another/common/widgets/image_widgets.dart';
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

  static Widget appTextField({
    String text = "",
    String iconName = "",
    String hintText = "Type in your info",
    bool obscureTexts = false,
  }) {
    return Container(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text14(text: text),
          SizedBox(
            height: 5,
          ),
          Container(
            width: 350,
            height: 50,
            decoration: AppBoxDecorations.appBoxShadowTextField(),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 17),
                  child: ImageWidgets.appImage(imagePath: iconName),
                ),
                Container(
                  width: 280,
                  height: 50,
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      hintText: hintText,
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.transparent,
                      )),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.transparent,
                      )),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.transparent,
                      )),
                      disabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.transparent,
                      )),
                    ),
                    onChanged: (value) {},
                    maxLines: 1,
                    autocorrect: false,
                    obscureText: obscureTexts,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
