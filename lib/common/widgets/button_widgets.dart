import 'package:another/common/utils/colors.dart';
import 'package:another/common/widgets/app_shadows.dart';
import 'package:another/common/widgets/components.dart';
import 'package:another/common/widgets/text_widgets.dart';
import 'package:flutter/material.dart';

class ButtonWidgets {
  static appButton({
    double width = 325,
    double height = 50,
    String buttonName = "",
    bool isLogin = true,
    BuildContext? context,
    void Function()? callback,
  }) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        width: 325,
        height: 50,
        decoration: AppBoxDecorations.customBoxDecoration(
            color: isLogin ? AppColors.primaryElement : Colors.white,
            border: Border.all(color: AppColors.primaryFourElementText)),
        child: Center(
            child: Text16(
          text: buttonName,
          color: isLogin ? AppColors.primaryBackground : AppColors.primaryText,
        )),
      ),
    );
  }
}
