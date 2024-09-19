import 'package:another/common/utils/colors.dart';
import 'package:another/common/widgets/app_shadows.dart';
import 'package:another/common/widgets/image_widgets.dart';
import 'package:another/common/widgets/text_widgets.dart';
import 'package:flutter/material.dart';

class Components {
  static AppBar buildAppBar() {
    return AppBar(
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(
          height: 1,
          color: Colors.grey.withOpacity(0.3),
        ),
      ),
      title: const Text16(
        text: "Login",
        color: AppColors.primaryText,
      ),
    );
  }

  static Widget appTextField({
    String text = "",
    String iconName = "",
    String hintText = "Type in your info",
    bool obscureTexts = false,
    void Function(String value)? callback,
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
                    onChanged: (value) => callback!(value),
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
