import 'package:flutter/material.dart';

class ButtonTextStyle extends StatelessWidget {
  final String title;
  const ButtonTextStyle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.labelSmall,
    );
  }
}