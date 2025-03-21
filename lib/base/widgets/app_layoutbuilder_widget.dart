import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final int randeomDivider;
  final double width;

  const AppLayoutBuilderWidget(
      {super.key, required this.randeomDivider, this.width = 3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: Axis.horizontal,
        children: List.generate(
            (constraints.constrainWidth() / randeomDivider).floor(),
            (index) => SizedBox(
                  width: width,
                  height: 1,
                  child: const DecoratedBox(
                      decoration: BoxDecoration(color: Colors.white)),
                )),
      );
    });
  }
}
