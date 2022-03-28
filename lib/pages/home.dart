import 'package:flutter/material.dart';
import 'package:msplash/constants/app_settings.dart';

/// a class that represents home screen.
class HomeScreen extends StatelessWidget {
  /// ctor.
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Scaffold(
    backgroundColor: AppSettings.homeBackgroundColor,
        body: Center(
          child: Text(
            'Hello!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'Poppins',
              color: AppSettings.homeTextColor,
            ),
          ),
        ),
      );
}
