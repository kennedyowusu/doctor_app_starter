import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final TextAlign textAlign;
  final int maxLines;

  const CustomText({
    Key? key,
    required this.text,
    required this.textStyle,
    this.textAlign = TextAlign.start,
    this.maxLines = 1,
    FontWeight? fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextStyle(
      text: text,
      textAlign: textAlign,
      fontSize: textStyle.fontSize ?? 16,
      fontWeight: textStyle.fontWeight ?? FontWeight.normal,
      color: textStyle.color ?? Colors.black,
    );
  }
}

class CustomTextStyle extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final double letterSpacing;
  final TextAlign? textAlign;

  const CustomTextStyle({
    Key? key,
    required this.text,
    this.fontSize = 16.0,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.black,
    this.letterSpacing = 0.0,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Text(
      text,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
        fontSize: screenWidth * fontSize / 375.0,
        fontWeight: fontWeight,
        color: color,
        letterSpacing: letterSpacing,
      ),
    );
  }
}
