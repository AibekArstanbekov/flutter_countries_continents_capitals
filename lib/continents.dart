// ignore: file_names

import 'package:flutter/material.dart';
import 'package:flutter_countries_app/fuetures/app_text.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appText.header('Capitalis of the World'),
        centerTitle: false,
      ),
    );
  }
}
