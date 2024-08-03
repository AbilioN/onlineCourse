import 'package:another/common/widgets/app_shadows.dart';
import 'package:another/common/widgets/text_widgets.dart';
import 'package:flutter/material.dart';

class OnboardingPageOne extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subTitle;

  const OnboardingPageOne({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          fit: BoxFit.fitWidth,
        ),
        Container(
          child: Text24(text: title),
          margin: EdgeInsets.only(top: 15),
        ),
        Container(
          margin: EdgeInsets.only(top: 15),
          child: Text16(
            text: subTitle,
          ),
        ),
        _NextButton()
      ],
    );
  }
}

class _NextButton extends StatelessWidget {
  const _NextButton();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325,
      height: 50,
      margin: const EdgeInsets.only(
        top: 100,
        left: 25,
        right: 25,
      ),
      decoration: AppBoxDecorations.customBoxDecoration(),
    );
  }
}
