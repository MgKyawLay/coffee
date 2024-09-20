import 'package:coffee/assets/colors.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.topCenter,
          decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  image: AssetImage('lib/assets/onBoarding.png'),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter)),
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Fall in love with Coffee in Blissful Delight!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    print("continue");
                  },
                  child: const Text(
                    "Get Start",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        )
      ],
    ));
  }
}
