import 'package:flutter/material.dart';

import 'text_style_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  const AppColumnTextLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TextStyleThird(text: '1 May'),
        SizedBox(
          height: 5,
        ),
        TextStyleThird(text: 'DATE'),
      ],
    );
  }
}
