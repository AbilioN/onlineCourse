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
            color: Colors.red,
            // width: 400,
            // height: 300,
            child: PageView(
              children: [
                Text("Hello World"),
                Text("Hello World"),
                Text("Hello World"),
                Text("Hello World"),
              ],
            ),
          ),
          Positioned(
            child: const Text("Widget One"),
            bottom: 150,
            left: 20,
          ),
          Positioned(
            child: const Text(
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
