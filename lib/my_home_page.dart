import 'package:flutter/material.dart';
import 'package:flutter_countries_app/fuetures/app_text.dart';
import 'package:flutter_countries_app/fuetures/app_texts.dart';
import 'package:flutter_countries_app/fuetures/model.dart';
import 'package:flutter_countries_app/fuetures/widgets/line_divider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        children: [
          LineDivider(),
          Expanded(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: List.generate(6, (index) {
                final continent = continentsList[index];
                return CardWidget(continent.text);
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
  const CardWidget(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: Colors.teal[400],
      child: appText.title(text),
    );
  }
}
