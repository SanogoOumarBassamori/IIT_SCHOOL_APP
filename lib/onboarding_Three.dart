import 'package:flutter/material.dart';

class OnboardingThree extends StatelessWidget {
  const OnboardingThree({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            "assets/3.png",
          ),
          const Column(
            children: [
              Text(
                "Bienvenue a IIt,l'ecole d'excellence",
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: const BorderSide(color: Colors.blue),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7))),
                  onPressed: () {
                    controller.previousPage(
                        duration: Duration(milliseconds: 200),
                        curve: Curves.bounceIn);
                  },
                  child: const Text(
                    'Precedent',
                    style: TextStyle(color: Colors.blue),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: const BorderSide(color: Colors.blue),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7))),
                  onPressed: () {
                    controller.nextPage(
                        duration: Duration(milliseconds: 200),
                        curve: Curves.bounceIn);
                  },
                  child: const Text(
                    'Suivant',
                    style: TextStyle(color: Colors.blue),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
