import 'package:flutter/material.dart';
import 'package:iit_school/onboarding_Three.dart';
import 'package:iit_school/onboarding_four.dart';
import 'package:iit_school/onboarding_one.dart';
import 'package:iit_school/onboarding_two.dart';

class OnBoardingOverview extends StatefulWidget {
  const OnBoardingOverview({
    super.key,
  });

  @override
  State<OnBoardingOverview> createState() => _OnBoardingOverviewState();
}

class _OnBoardingOverviewState extends State<OnBoardingOverview> {
  // variable dart

  var pages = 4;
  int currenPage = 0;

  late PageController controller;

  @override
  void initState() {
    controller = PageController(initialPage: currenPage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: Container(
      //   height: 100,
      //   padding: EdgeInsets.symmetric(horizontal: 20),
      //   child: Row(
      //     mainAxisAlignment: currenPage == 0 || currenPage == 3
      //         ? MainAxisAlignment.center
      //         : MainAxisAlignment.spaceBetween,
      //     children: [
      //       if (currenPage != 0)
      //         ElevatedButton(
      //             style: ElevatedButton.styleFrom(
      //                 backgroundColor: Colors.white,
      //                 side: const BorderSide(color: Colors.blue),
      //                 shape: RoundedRectangleBorder(
      //                     borderRadius: BorderRadius.circular(7))),
      //             onPressed: () {
      //               controller.previousPage(
      //                   duration: const Duration(microseconds: 250),
      //                   curve: Curves.easeInOut);
      //             },
      //             child: const Text(
      //               'Precedent',
      //               style: TextStyle(color: Colors.blue),
      //             )),
      //       if (currenPage != 3)
      //         ElevatedButton(
      //             style: ElevatedButton.styleFrom(
      //                 backgroundColor: Colors.white,
      //                 side: const BorderSide(color: Colors.blue),
      //                 shape: RoundedRectangleBorder(
      //                     borderRadius: BorderRadius.circular(7))),
      //             onPressed: () {
      //               controller.nextPage(
      //                   duration: const Duration(microseconds: 250),
      //                   curve: Curves.easeIn);
      //             },
      //             child: const Text(
      //               'Suivant',
      //               style: TextStyle(color: Colors.blue),
      //             )),
      //     ],
      //   ),
      // ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (index) {
          print(index);
          setState(() {
            currenPage = index;
          });
          print('currenPage : $currenPage');
        },
        controller: controller,
        children: [
          OnboardingOne(
            controller: controller,
          ),
          OnboardingTwo(
            controller: controller,
          ),
          OnboardingThree(
            controller: controller,
          ),
          OnboardingFour(
            controller: controller,
          ),
        ],
      ),
    );
  }
}
