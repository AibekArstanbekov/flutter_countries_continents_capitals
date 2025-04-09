import 'package:flutter/material.dart';

class AppText {
  //бул виджет кайтаруучу метод header тибиндеги текст учун жообтуу
  Widget header(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
    );
  }

  //бул виджет кайтаруучу метод title тибиндеги текст учун жообтуу
  Widget title(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
    );
  }
}

AppText appText = AppText();
