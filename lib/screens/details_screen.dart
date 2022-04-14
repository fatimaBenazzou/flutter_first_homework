import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constantes.dart';

class DetailsScreen extends StatefulWidget {
  var destination;

  DetailsScreen({Key? key, required this.destination}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var destination = widget.destination;

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            //1ere partie
            //image
            Expanded(
              child: Stack(
                  children: [
                    //image container
                    Container(
                        padding: EdgeInsets.symmetric(vertical: h * 0.01),
                        width: w * 0.95,

                        //arrondir les bord de l'image
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            destination['image'],
                            fit: BoxFit.fill,
                          ),
                        )),

                    //back button
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: h * 0.025, horizontal: w * 0.03),
                      child: FloatingActionButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Icon(
                          CupertinoIcons.back,
                          color: blue,
                        ),
                        backgroundColor: white,
                        elevation: 0,
                      ),
                    ),
                  ]
              ),
              flex: 1,
            ),


            //2eme partie
            Expanded(
                flex: 1,
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: w * 0.05,vertical: h * 0.015),
                  child: Column(
                    children: [
                      //destination info
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            //destination's name
                            Expanded(
                                child: Text(
                                  destination['name'],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25
                                  ),
                                )
                            ),

                            //the row
                            Expanded(
                                child: Row(
                                  children: [
                                    //stars
                                   Expanded(
                                     //permet de concaténer une icon a du text
                                     child: Wrap(
                                        crossAxisAlignment: WrapCrossAlignment.center,
                                          children: [
                                            const Icon(Icons.star_outlined,color: blue,),
                                            Text(
                                              "${destination['stars']}",
                                              style: const TextStyle(
                                                  color: darkGrey,
                                                  fontWeight: FontWeight.bold
                                              ),
                                            ),
                                          ],
                                        )
                                   ),

                                    // time
                                    Expanded(
                                     child: Wrap(
                                       crossAxisAlignment: WrapCrossAlignment.center,
                                       children: [
                                         const Icon(Icons.schedule,color: blue,),
                                         Text(
                                           "${destination['time']}",
                                           style: const TextStyle(
                                               color: darkGrey,
                                               fontWeight: FontWeight.bold
                                           ),
                                         ),
                                       ],
                                     )
                                   ),

                                    //distance
                                    Expanded(
                                     child:  Wrap(
                                       crossAxisAlignment: WrapCrossAlignment.center,
                                       children: [
                                         const Icon(Icons.location_on,color: blue,),
                                         Text(
                                           "${destination['distance']} km"
                                           ,style: const TextStyle(
                                             color: darkGrey,
                                             fontWeight: FontWeight.bold
                                           ),
                                         ),
                                       ],
                                     )
                                   ),

                                     SizedBox(width: w * 0.2 ,),
                                    // favorite
                                     Expanded(
                                      flex: 1,
                                        child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                destination['favorite'] = !destination['favorite'];
                                              });
                                            },

                                            child: AnimatedContainer(
                                                height: 35,
                                                padding: const EdgeInsets.all(5),
                                                duration: const Duration(milliseconds: 300),

                                                child: Center(
                                                child: destination['favorite']
                                                    ? const Icon(Icons.favorite, color: blue,)
                                                    : Icon(Icons.favorite_outline, color: Colors.grey.shade600,)
                                              )
                                            ),
                                        )
                                   ),
                                  ],
                                )
                            ),
                          ],
                        ),
                        flex: 1,
                      ),

                      //description
                      Expanded(
                        child: Padding(
                          padding:  EdgeInsets.only(top: h * 0.02),
                          //eviter l'overflow
                          child: SingleChildScrollView(
                            child: Text(
                              destination['description'],
                              style: const TextStyle(
                                  color: darkGrey,
                                  fontSize: 16
                              ),
                            ),
                          ),
                        ),
                        flex: 3,
                      ),

                      //price + book button
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //total
                            Expanded(
                              flex: 2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Total',
                                    style: TextStyle(
                                        color: darkGrey, fontSize: 12,fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(height: h * 0.005,),
                                  Text(
                                    "\$${destination['price']}",
                                    style: const TextStyle(
                                        color: black,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),

                            //book button
                            Expanded(
                              flex: 1,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Book Now',
                                    style:  TextStyle(color: white),
                                  )
                              ),
                            ),
                          ],
                        ),
                        flex: 1,
                      ),
                    ],
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
