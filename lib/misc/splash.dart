import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:msplash/constants/app_settings.dart';
import 'package:msplash/misc/extensions.dart';
import 'package:msplash/pages/home.dart';

/// a class that represents splash screen.
class SplashScreen extends StatefulWidget {
  /// ctor.
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: AppSettings.splashBackgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Lottie.asset(
                AppSettings.splashIcon,
                height: context.multiplyHeight(0.3),
              ),
            ),
            const Text(
              AppSettings.appName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: 'Poppins',
                color: AppSettings.splashTextColor,
              ),
            ),
            const Text(
              AppSettings.appVersion,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                fontFamily: 'Poppins',
                color: AppSettings.splashTextColor,
              ),
            ),
          ],
        ),
      );
}
