import 'package:another/common/widgets/text_widgets.dart';
import 'package:another/pages/welcome/widgets.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            scrollDirection: Axis.horizontal,
            children: [
              // first page
              Column(
                children: [
                  Image.asset(
                    "assets/images/reading.png",
                    fit: BoxFit.fitWidth,
                  ),
                  Container(
                    child: Text24(text: "First see Learning"),
                    margin: EdgeInsets.only(top: 15),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Text16(
                      text:
                          "Forget about all paper all knolege in one learning",
                    ),
                  )
                ],
              ),
              OnboardingPageOne(
                imagePath: "assets/images/reading.png",
                title: "First see Learning",
                subTitle: "My subtitle",
              ),
            ],
          ),
          const Positioned(
            child: const Text("Widget One"),
            bottom: 150,
            left: 20,
          ),
          const Positioned(
            child: Text(
              "Widget two",
              style: TextStyle(fontSize: 30),
            ),
            bottom: 200,
            right: 200,
          )
        ],
      ),
    );
  }
}

class text24Normal {
  const text24Normal();
}
