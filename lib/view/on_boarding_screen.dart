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
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("Welcome to our cozy coffee corner, where every cup is a delightful for you.", textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 18,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/main');
                  },
                  child: const Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              SizedBox(
                height: 40,
              )
            ],
          ),
        )
      ],
    ));
  }
}
