import 'package:flutter/material.dart';

class PageWidgetBottombar extends StatelessWidget {
  PageWidgetBottombar(this.color);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
