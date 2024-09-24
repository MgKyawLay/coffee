import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget {
  final VoidCallback onPress;
  final double size;
  final Color color;
  final Icon icon;

  const SquareButton({
    super.key,
    required this.onPress,
    required this.icon,
    this.size = 35.0,
    this.color = Colors.red,
  });

  @override
  Widget build(BuildContext context) {
     return GestureDetector(
      onTap: onPress,
       child: Container(
         height: size,
         width: size,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: color,
         ),
         child: icon,
       ),
     );
  }
}