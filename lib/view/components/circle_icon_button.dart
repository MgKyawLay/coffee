import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(30)
      ),
      child: Icon(Icons.add),
    );
  }
}
