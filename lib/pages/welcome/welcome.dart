import 'package:another/common/widgets/text_widgets.dart';
import 'package:another/pages/welcome/widgets.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  Welcome({super.key});

  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            margin: const EdgeInsets.only(top: 30),
            child: Stack(
              children: [
                PageView(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  children: [
                    OnboardingPageOne(
                      controller: _controller,
                      imagePath: "assets/images/reading.png",
                      title: "First see Learning",
                      subTitle:
                          "Forget about all paper all knolege in one learning putting a litle bit of more text",
                      index: 1,
                    ),
                    OnboardingPageOne(
                      controller: _controller,
                      imagePath: "assets/images/man.png",
                      title: "Connect with Everyone",
                      subTitle:
                          "Allways keep in touch with your tutor and friends. Lets get connected.",
                      index: 2,
                    ),
                    OnboardingPageOne(
                      controller: _controller,
                      imagePath: "assets/images/boy.png",
                      title: "Always facinated learning",
                      subTitle:
                          "Anywhere and anytime at your descretion. So study wherever you can",
                      index: 3,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class text24Normal {
  const text24Normal();
}
