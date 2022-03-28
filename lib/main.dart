import 'package:flutter/material.dart';
import 'package:msplash/misc/splash.dart';

void main() => runApp(const MSplash());

/// a class that represents MSplash app.
class MSplash extends StatelessWidget {
  /// ctor.
  const MSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      );
}
