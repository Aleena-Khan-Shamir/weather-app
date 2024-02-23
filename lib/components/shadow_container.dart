import 'package:flutter/material.dart';

class ShadowContainer extends StatelessWidget {
  const ShadowContainer({
    super.key,
    required this.height,
    required this.width,
    required this.padding,
    required this.blurRadius,
    required this.spreadRadius,
  });
  final BoxConstraints height;
  final BoxConstraints width;
  final BoxConstraints padding;
  final double blurRadius;
  final double spreadRadius;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: padding.maxHeight),
      height: height.maxHeight,
      width: width.maxWidth,
      decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
        BoxShadow(
            blurRadius: blurRadius,
            spreadRadius: spreadRadius,
            offset: const Offset(-3, 3),
            color: Colors.white10.withOpacity(0.2))
      ]),
    );
  }
}
