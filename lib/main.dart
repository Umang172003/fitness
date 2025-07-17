import 'package:flutter/material.dart';
import 'package:fitness/common/color_extension.dart';
import 'package:fitness/view/on_boarding/on_boarding_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness 3 in 1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: TColor.primaryColor1,  // TColor is now imported and defined
        fontFamily: "Poppins",
      ),
      home: const OnboardingView(),          // OnboardingView is now imported correctly
    );
  }
}
