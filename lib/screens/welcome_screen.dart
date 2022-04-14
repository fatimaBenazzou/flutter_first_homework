import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constantes.dart';
import 'intro/intro1.dart';
import 'intro/intro2.dart';
import 'intro/intro3.dart';
import 'main_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  PageController controller = PageController();
  bool lastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  lastPage = (index == 2);
                });
              },
              children: const [
                IntroScreen1(),
                IntroScreen2(),
                IntroScreen3(),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SmoothPageIndicator(
                      controller: controller, count: 3),
                  lastPage
                      ? FloatingActionButton(
                          backgroundColor: Colors.white,
                          onPressed: () => Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const MainScreen();
                          })),
                          child: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: blue,
                          ),
                        )
                      : FloatingActionButton(
                          backgroundColor: Colors.white,
                          onPressed: () => controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn),
                          child: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: blue,
                          ),
                        )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
