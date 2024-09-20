import 'package:coffee/assets/colors.dart';
import 'package:coffee/view/main_screen.dart';
import 'package:coffee/view/on_boarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes:{
        '/' : (BuildContext context) => OnBoardingScreen(),
        '/main': (BuildContext context) => MainScreen(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xFFC67C4E),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(color: AppColors.primary),
          selectedLabelStyle: TextStyle(color: AppColors.primary)
        ),
        useMaterial3: true,
      ),
    );
  }
}

