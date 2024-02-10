import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ConnectionPage extends StatelessWidget {
  const ConnectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                            margin: const EdgeInsets.only(top: 15, left: 15),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "S'inscrire ou se connecter avec",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              ),
                            )),
                      ),
                      SizedBox(
                          height: 200,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 0,
                                left: 0,
                                right: 0,
                                bottom: 0,
                                child: Container(
                                  color: Colors.red.withOpacity(.3),
                                ),
                              ),
                              Positioned(
                                left: 30,
                                child: Container(
                                  height: 200,
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.red.withOpacity(.5),
                                ),
                              ),
                              Positioned(
                                left: 60,
                                child: Container(
                                  height: 200,
                                  width: MediaQuery.of(context).size.width - 60,
                                  color: Colors.red.withOpacity(.7),
                                ),
                              ),
                              Positioned(
                                left: 90,
                                child: Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  height: 200,
                                  width: MediaQuery.of(context).size.width - 90,
                                  color: Colors.red,
                                  child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Iit Lience 2',
                                          style: TextStyle(
                                              fontSize: 35,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'application pour les élèves de IIT',
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ]),
                                ),
                              ),
                            ],
                          ))
                    ],
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "S'inscrire ou se connecter avec",
                        style: TextStyle(fontSize: 11),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Expanded(
                                  child: Row(
                                children: [
                                  Expanded(
                                      child: Container(
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            side:
                                                BorderSide(color: Colors.grey),
                                            backgroundColor: Colors.white),
                                        onPressed: () {},
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            FaIcon(
                                              FontAwesomeIcons.google,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "google",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12),
                                            )
                                          ],
                                        )),
                                  )),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      child: Container(
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            side:
                                                BorderSide(color: Colors.grey),
                                            backgroundColor: Colors.white),
                                        onPressed: () {},
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            FaIcon(
                                              FontAwesomeIcons.facebook,
                                              size: 20,



                                              
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "facebook",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12),
                                            )
                                          ],
                                        )),
                                  )),
                                ],
                              )),
                              const SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                  child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey)),
                              )),
                              const SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                  child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey)),
                              )),
                              const SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                  child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey)),
                              )),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )),
            Expanded(
                child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.center,
              child: const Text(
                "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en fa",
                textAlign: TextAlign.center,
              ),
            ))
          ],
        ),
      ),
    );
  }
}
