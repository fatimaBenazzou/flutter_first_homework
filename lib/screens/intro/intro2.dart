
import 'package:flutter/material.dart';

import '../../constantes.dart';

class IntroScreen2 extends StatefulWidget {
  const IntroScreen2({Key? key}) : super(key: key);

  @override
  _IntroScreen2State createState() => _IntroScreen2State();
}

class _IntroScreen2State extends State<IntroScreen2> {
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
              'assets/intro2.jpg',
              fit: BoxFit.fill,
            ),
          )
      ),
    );
  }
}
