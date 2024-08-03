import 'package:flutter/material.dart';

class Text24 extends StatelessWidget {
  final String text;
  const Text24({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.blue,
        fontSize: 24,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}

class Text16 extends StatelessWidget {
  final String text;
  const Text16({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.blue,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
