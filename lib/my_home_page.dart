import 'package:flutter/material.dart';
import 'package:flutter_countries_app/fuetures/app_text.dart';
import 'package:flutter_countries_app/fuetures/app_texts.dart';
import 'package:flutter_countries_app/fuetures/model.dart';
import 'package:flutter_countries_app/fuetures/widgets/line_divider.dart';
import 'package:flutter_countries_app/theme/app_colors.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: myAppBar(),
      body: Column(
        children: [
          LineDivider(),
          Expanded(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(10),
              crossAxisSpacing: 25,
              mainAxisSpacing: 60,
              crossAxisCount: 2,
              children: List.generate(6, (index) {
                final continent = continentsList[index];
                return CardWidget(
                  onTap: () {},
                  continent.text,
                  continent.image,
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      title: appText.header(appTexts.titleText),
      centerTitle: false,
      actions: [
        Icon(Icons.settings, color: Colors.blue),
        SizedBox(width: 10),
        Icon(Icons.more_vert, size: 25),
      ],
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget(this.text, this.image, {super.key, this.onTap});
  final String text;
  final String image;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        color: AppColors.backgroundColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              appText.title(text),
              Image.asset(image, width: 132, height: 160),
            ],
          ),
        ),
      ),
    );
  }
}
