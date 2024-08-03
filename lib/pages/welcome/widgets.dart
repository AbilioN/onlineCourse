import 'package:another/common/utils/colors.dart';
import 'package:another/common/widgets/app_shadows.dart';
import 'package:another/common/widgets/text_widgets.dart';
import 'package:flutter/material.dart';

class OnboardingPageOne extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subTitle;
  final PageController controller;

  final int index;

  const OnboardingPageOne({
    super.key,
    required this.controller,
    required this.imagePath,
    required this.title,
    required this.subTitle,
    this.index = 0,
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
          margin: EdgeInsets.only(top: 15),
          child: Text24(text: title),
        ),
        Container(
          margin: const EdgeInsets.only(top: 15),
          child: Text16(
            text: subTitle,
          ),
        ),
        _NextButton(
          controller: controller,
          index: index,
        )
      ],
    );
  }
}

class _NextButton extends StatelessWidget {
  final int index;
  final PageController controller;
  const _NextButton({required this.controller, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('index $index');

        if (index < 3) {
          controller.animateToPage(index,
              duration: Duration(milliseconds: 300), curve: Curves.bounceIn);
        }
      },
      child: Container(
        width: 325,
        height: 50,
        margin: const EdgeInsets.only(
          top: 100,
          left: 25,
          right: 25,
        ),
        decoration: AppBoxDecorations.customBoxDecoration(),
        child: const Center(
          child: Text16(
            text: "Next",
            color: AppColors.primaryBackground,
          ),
        ),
      ),
    );
  }
}
