
import 'package:flutter/material.dart';

import '../../constantes.dart';

class IntroScreen3 extends StatefulWidget {
  const IntroScreen3({Key? key}) : super(key: key);

  @override
  _IntroScreen3State createState() => _IntroScreen3State();
}

class _IntroScreen3State extends State<IntroScreen3> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      body:  Container(
          padding: EdgeInsets.symmetric(vertical: h * 0.02,horizontal: w * 0.02),
          width: double.infinity,
          height: double.infinity,

          //arrondir les bord de l'image
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              'assets/intro3.jpg',
              fit: BoxFit.fill,
            ),
          )
      ),
    );
  }
}
