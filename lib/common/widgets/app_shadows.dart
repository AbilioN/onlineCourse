import 'package:another/common/utils/colors.dart';
import 'package:flutter/material.dart';

class AppBoxDecorations {
  // Method to return the customized BoxDecoration
  static BoxDecoration customBoxDecoration(
      {Color color = AppColors.primaryElement,
      double radius = 15,
      double sR = 1,
      double bR = 2}) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(radius),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.1),
          spreadRadius: sR,
          blurRadius: bR,
          offset: const Offset(0, 2),
        ),
      ],
    );
  }
}
