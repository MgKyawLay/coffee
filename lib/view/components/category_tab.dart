import 'package:flutter/material.dart';

class CategoryTab extends StatefulWidget {
  _CategoryTabState createState() => _CategoryTabState();
}

class _CategoryTabState extends State<CategoryTab> {
  int _currentIndex = 0;
  List<String> _categoryList = ["tab1", "tab2", "tab3", "tab4", "tab5", "tab6"];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(_categoryList.length, (index) {
        return Row(
          children: [
            RawChip(
              label: Text(_categoryList[index]),
              selected: _currentIndex == index ? true : false,
              onPressed: () {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            SizedBox(
              width: 20,
            )
          ],
        );
      })),
    );
  }
}
