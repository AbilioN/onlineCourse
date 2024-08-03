import 'package:another/common/utils/colors.dart';
import 'package:flutter/material.dart';

class Text24 extends StatelessWidget {
  final String text;
  final Color color;
  const Text24({
    super.key,
    required this.text,
    this.color = AppColors.primaryText,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontSize: 24,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}

class Text16 extends StatelessWidget {
  final String text;
  final Color color;
  const Text16({
    super.key,
    required this.text,
    this.color = AppColors.primarySecondaryElementText,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
