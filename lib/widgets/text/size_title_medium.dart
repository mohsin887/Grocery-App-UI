import 'package:flutter/material.dart';

class TextTitleMedium extends StatelessWidget {
  final String title;
  const TextTitleMedium({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}