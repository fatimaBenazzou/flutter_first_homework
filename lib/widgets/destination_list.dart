
import 'package:first_hw/screens/details_screen.dart';
import 'package:flutter/material.dart';
import 'destination_container.dart';
import 'sous_container.dart';

class DestinationList extends StatelessWidget {
  var destinations;
  var h;
  var w;
  var index;

  DestinationList({required this.h, required this.w, required this.index,required this.destinations, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


  return SizedBox(
    child: Padding(
      padding: EdgeInsets.only(right: w * 0.08),

      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailsScreen(
                destination: destinations[index],
              )
          ),
        ),

        child: Stack(
            alignment: Alignment.bottomCenter,
            children:[

              //image container
              DestinationContainer(
                  h:h,w: w, destinations: destinations, index: index
              ),

              //white container
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: SousContainer(
                    h: h, w: w, destinations: destinations, index: index
                ),
              ),
            ]),
      ),
    ),
  );
  }
}


