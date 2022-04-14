
import 'package:flutter/material.dart';

import '../constantes.dart';

class DestinationContainer extends StatelessWidget {
  const DestinationContainer({
    Key? key,
    required this.w,
    required this.h,
    required this.destinations,
    required this.index,
  }) : super(key: key);

  final  w;
  final  h;
  final  destinations;
  final  index;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: h * 0.5,
        width: w * 0.6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow:  const [
            BoxShadow(
              color: darkGrey,
              blurRadius: 10,
              offset: Offset(2, 5), // Shadow position
            ),
          ],
        ),

        //arrondir les bord de l'image
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            destinations[index]['image'],
            fit: BoxFit.fill,
          ),
        ));
  }
}