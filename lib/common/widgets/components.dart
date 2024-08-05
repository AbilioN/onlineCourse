import 'package:another/common/utils/colors.dart';
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
}
