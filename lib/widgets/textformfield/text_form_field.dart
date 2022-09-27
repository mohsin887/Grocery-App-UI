import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    Key? key,
    required this.controller,
    required this.hintText,
    this.suffixIcon,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 4,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: Colors.white, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
            controller: controller,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(16),
              suffixIcon: suffixIcon,
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              hintStyle: const TextStyle(
                color: Color(0xffD3D3D3),
              ),
              hintText: hintText,
            ),
          ),
        ],
      ),
    );
  }
}