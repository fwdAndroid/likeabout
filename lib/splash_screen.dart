import 'dart:async';

import 'package:flutter/material.dart';
import 'package:likaboutapp/web_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (builder) => MyWidget(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(_getSplashImage()),
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
          ),
        ),
      ),
    );
  }

  String _getSplashImage() {
    double screenWidth = MediaQuery.of(context).size.width;

    // Choose splash image based on screen width
    if (screenWidth < 600) {
      return "assets/splash.png"; // For mobile
    } else if (screenWidth >= 600 && screenWidth < 960) {
      return "assets/splash.png"; // For tablet
    } else {
      return "assets/splash.png"; // For large phones
    }
  }
}
