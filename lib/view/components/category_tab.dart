import 'package:flutter/material.dart';

class CategoryTab extends StatefulWidget {
  _CategoryTabState createState() => _CategoryTabState();
}

class _CategoryTabState extends State<CategoryTab> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("data1"),
        Text("data2")
      ],
    );
  }
}
