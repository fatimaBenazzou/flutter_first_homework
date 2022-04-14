import 'package:first_hw/screens/profile.dart';
import 'package:first_hw/screens/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import '../constantes.dart';
import 'home_screen.dart';
import 'map.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //screens à parcourir avec la nav bar
  final screens = [
    const HomeScreen(),
    const SearchScreen(),
    const MapScreen(),
    const ProfileScreen()
  ];

  //screen courrant
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: grey,
        elevation: 0,

        //photo
        leading: const Padding(
          padding: EdgeInsets.all(6),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/profile.jpg"),
          ),
        ),

        title: const Text(
          'Hi Fatchi !',
          style: TextStyle(color: black, fontWeight: FontWeight.w700),
        ),
      ),

      body: screens[currentIndex],

      bottomNavigationBar: SnakeNavigationBar.color(
        height: 60,
        snakeShape: SnakeShape.circle,
        snakeViewColor: blue,
        selectedItemColor:
            SnakeShape.circle == SnakeShape.indicator ? blue : null,
        unselectedItemColor: darkGrey,

        showUnselectedLabels: false,
        showSelectedLabels: false,

        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'explore'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'profil'),
        ],
      ),
    );
  }
}
