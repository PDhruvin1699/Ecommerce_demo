
import 'package:figmaappnew/presentation/screens/mainpages/dashboardscreen.dart';
import 'package:figmaappnew/presentation/screens/onboardscreen.dart';
import 'package:flutter/material.dart';





class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const Duration splashDuration = Duration(seconds: 3);

    Future.delayed(splashDuration, () {
      // After the delay, navigate to the next screen.
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) {
          // Replace 'NextScreen' with the screen you want to navigate to.
          return OnboardingPage();
        }),
      );
    });

    return Scaffold(
      backgroundColor: Colors.transparent, // Set the background to transparent
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            child: Center(
              child: Image.asset(
                'images/quickmart (1).png', // Replace with the path to your image asset
                width: 300, // Set the image width
                height: 200, // Set the image height
              ),
            ),
          ),
          Positioned(
            left: 149,

            top: 485, // Adjust the top value to position the text as desired
            child: Text(
              'Asia’s No 1 Ecommerce App',
              style: TextStyle(
                color: Color(0xFF1B1A1A),
                fontSize: 14,
                fontFamily: 'Plus Jakarta Sans',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}