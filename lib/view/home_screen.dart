import 'package:coffee/assets/colors.dart';
import 'package:coffee/view/components/category_tab.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String searchQuery = "";
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: AppColors.background,
          ),
          Container(
            alignment: Alignment.topLeft,
            height: deviceHeight * 0.6,
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, deviceHeight * 0.1, 20, 0),
              child: CategoryTab(),
            ),
          ),
          Positioned(
              top: deviceHeight * 0.2,
              height: deviceHeight * 0.19,
              width: deviceWidth,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.overlayBackground,
                      borderRadius: BorderRadius.circular(10)),
                ),
              )),
        ],
      ),
    ));
  }
}
