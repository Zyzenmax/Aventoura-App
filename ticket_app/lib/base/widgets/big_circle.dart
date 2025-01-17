import 'package:flutter/material.dart';

class BigCircle extends StatelessWidget {
  final bool? isLeft;
  final bool? isRight;
  const BigCircle({super.key, this.isLeft, this.isRight});

  @override
  Widget build(BuildContext context) {
    const radius = Radius.circular(10);
    const zeroRadius = Radius.zero;

    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: isLeft == true ? radius : zeroRadius,
            bottomRight: isLeft == true ? radius : zeroRadius,
            topLeft: isRight == true ? radius : zeroRadius,
            bottomLeft: isRight == true ? radius : zeroRadius,
          ),
        ),
      ),
    );
  }
}
