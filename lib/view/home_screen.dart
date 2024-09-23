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
            height: MediaQuery.of(context).size.height * 0.6,
            width: double.infinity,
            color: Colors.white,
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.2,
              height: MediaQuery.of(context).size.height * 0.19,
              width: MediaQuery.of(context).size.width,
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
