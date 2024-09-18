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

class Text14 extends StatelessWidget {
  final String text;
  final Color color;
  const Text14({
    super.key,
    required this.text,
    this.color = AppColors.primaryThreeElementText,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: TextStyle(
        color: color,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}

class TextUnderline extends StatelessWidget {
  final String text;
  final Color color;

  const TextUnderline(
      {super.key,
      required this.text,
      this.color = AppColors.primaryBackground});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return GestureDetector(
      onTap: () {},
      child: Text(
        text,
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: AppColors.primaryText,
            decoration: TextDecoration.underline,
            decorationColor: AppColors.primaryText),
      ),
    );
  }
}
