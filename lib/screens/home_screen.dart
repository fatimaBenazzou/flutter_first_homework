import 'package:first_hw/constantes.dart';
import 'package:first_hw/widgets/destination_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List destinations = [
    //italy
    {
      'image': 'assets/italy.jpg',
      'name': 'Venice',
      'location': 'Italy',
      'stars': 4.0,
      'time': '12:30',
      'distance': 100,
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'
              ' Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
      'price': 800.0000,
      'favorite': false
    },

    //greece
    {
      'image': 'assets/greece.jpg',
      'name': 'Santorini',
      'location': 'Greece',
      'stars': 4,
      'time': '17',
      'distance': 230,
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
      'price': 950.0000,
      'favorite': false
    },

    //thailand
    {
      'image': 'assets/thailand.jpg',
      'name': 'Loha Prasat',
      'location': 'Thailand',
      'stars': 3.0,
      'time': '14:40',
      'distance': 120,
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
      'price': 480.0000,
      'favorite': false
    },

    //japan
    {
      'image': 'assets/japan.jpg',
      'name': 'Mount Fuji',
      'location': 'Japan',
      'stars': 3.0,
      'time': '20',
      'distance': 700,
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
      'price': 1000.00,
      'favorite': false
    }
  ];



  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(

      backgroundColor: grey,

      body: Padding(
        padding: EdgeInsets.symmetric(vertical: h * 0.03, horizontal: w * 0.05),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //text
              SizedBox(
                  width: w * 0.55,
                  child: const Text(
                    'Where would you like to visit ?',
                    style: TextStyle(
                        color: black, fontWeight: FontWeight.w700, fontSize: 30),
                  )),

              SizedBox(height: h * 0.03,),

               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Container(
                     width: w * 0.75,
                     height: h * 0.06,

                     decoration: BoxDecoration(
                       boxShadow:  [
                         BoxShadow(
                         color: Colors.grey.shade300,
                         blurRadius: 10,
                         offset: Offset(2, 5), // Shadow position
                        ),
                       ]
                     ),

                     child: TextField(
                       decoration: InputDecoration(
                           filled: true,
                           fillColor: Colors.white,
                           contentPadding: EdgeInsets.zero,
                           prefixIcon: const Icon(Icons.search, color: darkGrey,),
                           border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(10),
                               borderSide: BorderSide.none
                           ),
                           hintStyle: const TextStyle(
                               fontSize: 14,
                               color: darkGrey
                           ),
                           hintText: "Search Places"
                       ),
                     ),

                   ),


                   Container(
                     height: h * 0.057,
                     width: w * 0.12,

                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: blue
                       ),

                     //clickable container
                     child: InkWell(
                       onTap: (){},
                       child: const Icon(Icons.tune,color: white,),
                     ),
                   ),

                 ],
               ),

              //liste d'endroit a visité
              SizedBox(
                width: w,
                height: h * 0.55,

                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: destinations.length,
                    itemBuilder: (BuildContext context, int index) {

                      return DestinationList(
                          h: h, w: w,index: index,destinations: destinations
                      );
                    }
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}




