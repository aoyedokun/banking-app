import 'package:flutter/material.dart';

import 'flashscreen.dart';
import 'onboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/": (context) => FlashScreen(),
          '/onboarding_screen': (context) => OnboardingScreen(),
        }
    );
  }
}

