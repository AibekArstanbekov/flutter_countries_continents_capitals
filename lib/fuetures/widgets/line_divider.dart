import 'package:flutter/material.dart';

class LineDivider extends StatelessWidget {
  const LineDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.black,
      indent: 20,
      endIndent: 20,
      thickness: 2,
    );
  }
}
