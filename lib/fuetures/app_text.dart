import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum TextType { heading, body }

class AppText extends StatelessWidget {
  const AppText({
    super.key,
    this.fontWeight,
    required this.title,
    this.maxLines,
    this.color,
    this.overflow,
    this.textAlign,
    required this.textType,
    this.textDirection,
    this.decoration,
  });
  final FontWeight? fontWeight;
  final String title;
  final int? maxLines;
  final Color? color;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final TextType textType;
  final TextDirection? textDirection;
  final TextDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = getTextStyle(textType);
    if (fontWeight != null) {
      textStyle = textStyle.copyWith(fontWeight: fontWeight);
    }
    Color? textColor = color ?? textStyle.color;

    return Text(
      title,
      overflow: overflow,
      maxLines: maxLines,
      textDirection: textDirection,
      textAlign: textAlign,
      style: textStyle.copyWith(
        color: textColor,
        fontWeight: fontWeight,
        decoration: decoration,
      ),
    );
  }

  TextStyle getTextStyle(TextType type) {
    switch (type) {
      case TextType.heading:
        return const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w900,
          fontSize: 18,
        );
      case TextType.body:
        return const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w900,
          fontSize: 18,
        );
    }
  }
}
