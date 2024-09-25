import 'package:coffee/view/components/circle_icon_button.dart';
import 'package:flutter/material.dart';

class ItemCounter extends StatefulWidget {
  _ItemCounterState createState() => _ItemCounterState();
}

class _ItemCounterState extends State<ItemCounter>{
  @override
  Widget build(BuildContext context) {
   return Row(
     children: [
       ClipRRect(
         borderRadius: BorderRadius.circular(13),
         child: Image.network("https://www.vegrecipesofindia.com/wp-content/uploads/2018/02/cafe-style-hot-coffee-recipe-1.jpg", height: 75, width: 75),
       ),
       Column(
         children: [
           Text("data"),
           Text("data"),
         ],
       ),
       Row(
         children: [
          CircleIconButton(),
           Text("data"),
           CircleIconButton(),
         ],
       )
     ],
   );
  }

}