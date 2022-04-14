
import 'package:flutter/material.dart';

import '../../constantes.dart';

class IntroScreen1 extends StatefulWidget {
  const IntroScreen1({Key? key}) : super(key: key);

  @override
  _IntroScreen1State createState() => _IntroScreen1State();
}

class _IntroScreen1State extends State<IntroScreen1> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
          padding: EdgeInsets.symmetric(vertical: h * 0.02,horizontal: w * 0.02),
          width: double.infinity,
          height: double.infinity,

          //arrondir les bord de l'image
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              'assets/intro1.jpg',
              fit: BoxFit.fill,
            ),
          )
      ),
    );
  }
}
