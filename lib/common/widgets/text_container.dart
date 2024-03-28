import 'package:flutter/material.dart';
import 'package:test_nextline/resources/screen/responsive/responsive.dart';

class TextContainer extends StatelessWidget {
  final Widget text;
  final double? height;
  final double? width;
  const TextContainer({super.key, required this.text, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Responsive.height * (height ?? 5),
      width: Responsive.width * (width ?? 30),
      child: text,
    );
  }
}
