import 'package:flutter/material.dart';
import 'package:iit_school/onboarding_Overview.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  void initState() {
    print('Hello');

    Future.delayed(Duration.zero, () async {
      await Future.delayed(Duration(seconds: 13));

      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const OnBoardingOverview()));

      print('Hello2');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/echelle-couleur-degrade.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/bg.png"),
                const SizedBox(
                  height: 30,
                ),
                const CircularProgressIndicator(
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
