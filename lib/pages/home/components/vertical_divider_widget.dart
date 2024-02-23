import 'package:flutter/material.dart';

class VerticalDividerWidget extends StatelessWidget {
  const VerticalDividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const VerticalDivider(
      color: Colors.white24,
      thickness: 2,
      indent: 20,
      endIndent: 20,
    );
  }
}
