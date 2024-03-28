import 'package:flutter/material.dart';
import 'package:test_nextline/resources/screen/responsive/responsive.dart';

@immutable
class GeneralButton extends StatelessWidget {
  final double? height, width;
  final String text;
  final Color? colorButton;
  final TextStyle? textStyle;
  final double? rounded;
  final TextAlign? textAlign;
  final double? elevation;
  final VoidCallback? event;

  const GeneralButton({
    super.key,
    this.height,
    this.width,
    required this.text,
    this.colorButton,
    this.textStyle,
    this.rounded,
    this.textAlign,
    this.elevation,
    this.event,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Responsive.height * (height ?? 10),
      width: Responsive.width * (width ?? 20),
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all<double>(elevation ?? 0),
          backgroundColor: MaterialStateProperty.all(colorButton),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(rounded ?? 5),
            ),
          ),
        ),
        onPressed: event ?? () {},
        child: Text(
          text,
          style: textStyle,
          textAlign: textAlign ?? TextAlign.start,
        ),
      ),
    );
  }
}
