
import 'package:flutter/material.dart';

import '../constantes.dart';

class SousContainer extends StatelessWidget {
  const SousContainer({
    Key? key,
    required this.h,
    required this.w,
    required this.destinations,
    required this.index,
  }) : super(key: key);

  final  h;
  final  w;
  final  destinations;
  final  index;

  @override
  Widget build(BuildContext context) {
    return Container(

        padding: EdgeInsets.symmetric(vertical: h * 0.015,horizontal: w * 0.05),
        height: h * 0.08,
        width: w * 0.57,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: white
        ),


        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            //destination's name
            Expanded(
              child: Text(
                destinations[index]['name'],
                style: const TextStyle(
                    color: black,
                    fontSize: 19,
                    fontWeight: FontWeight.w500
                ),
              ),
              flex: 1,
            ),

            //2nd text
            Expanded(
              child: Text(
                destinations[index]['location'],
                style: const TextStyle(
                    color: darkGrey,
                    fontSize: 16
                ),
              ),
              flex: 1,
            ),
          ],
        )
    );
  }
}
