import 'package:another/common/utils/colors.dart';
import 'package:flutter/material.dart';

class AppBoxShadow extends BoxDecoration {
  const AppBoxShadow();

  @override
  BoxDecoration build(BuildContext context) {
    return BoxDecoration(
        color: AppColors.primaryElement,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 1))
        ]);
  }
}
