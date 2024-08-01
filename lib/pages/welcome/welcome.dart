import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Text("Hello riverpod"),
          Container(
            color: Colors.white,
            // width: 400,
            // height: 300,
            child: PageView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 345,
                  height: 345,
                  child: Image.asset("assets/images/reading.png"),
                ),
                Container(
                  width: 345,
                  height: 345,
                  child: Image.asset("assets/images/reading.png"),
                ),
              ],
            ),
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
