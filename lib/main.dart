import 'package:flutter/material.dart';
import 'package:iit_school/onboarding_page.dart';

void main() {
  runApp(const IitSchoolApp());
}

class IitSchoolApp extends StatelessWidget {
  const IitSchoolApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Iit School Application',
      home: OnBoardingPage(),
    );
  }
}

