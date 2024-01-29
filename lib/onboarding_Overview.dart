import 'package:flutter/material.dart';
import 'package:iit_school/onboarding_Three.dart';
import 'package:iit_school/onboarding_four.dart';
import 'package:iit_school/onboarding_one.dart';
import 'package:iit_school/onboarding_two.dart';

class OnBoardingOverview extends StatelessWidget {
  const OnBoardingOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          const OnboardingOne(),
          const OnboardingTwo(),
          const OnboardingThree(),
          const OnboardingFour(),
          
        ],
      ),
    );
  }
}
