import 'package:another/common/widgets/text_widgets.dart';
import 'package:another/pages/welcome/widgets.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final indexProvider = StateProvider<int>((ref) => 0);

class Welcome extends ConsumerWidget {
  Welcome({super.key});

  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(indexProvider);

    print(index);
    return Container(
      // color: Colors.red,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            margin: const EdgeInsets.only(top: 30),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                // showing pages
                PageView(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (value) {
                    ref.read(indexProvider.notifier).state = value;
                  },
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
                Positioned(
                  child: DotsIndicator(
                    position: index,
                    dotsCount: 3,
                    mainAxisAlignment: MainAxisAlignment.center,
                    decorator: DotsDecorator(
                        size: const Size.square(9.0),
                        activeSize: const Size(24.0, 8.0),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  ),
                  bottom: 50,
                )
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
