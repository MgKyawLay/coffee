import 'package:coffee/view/home_screen.dart';
import 'package:coffee/view/on_boarding_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>{
  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    OnBoardingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
          onTap: (int index){
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: '-', ),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: '-'),
        // BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
        // BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),

      ]),
   );
  }

}