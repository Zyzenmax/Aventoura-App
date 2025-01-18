import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final int randomDivider;
  final double widthLine;

  const AppLayoutBuilderWidget(
      {super.key, required this.randomDivider, required this.widthLine});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      print("${(constraints.constrainWidth() / randomDivider).floor()}");
      return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
            (constraints.constrainWidth() / randomDivider).floor(),
            (index) => SizedBox(
                width: widthLine,
                height: 1,
                child: const DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                )),
          ));
    });
  }
}
