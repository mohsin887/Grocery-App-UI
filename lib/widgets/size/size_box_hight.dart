import 'package:flutter/material.dart';

class SizeBoxHeight extends StatelessWidget {
  final double height;
  const SizeBoxHeight({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}