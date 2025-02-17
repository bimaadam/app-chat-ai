import 'package:flutter/material.dart';
import 'package:flutter_chatai/intro_screen/intro_page1.dart';
import 'package:flutter_chatai/intro_screen/intro_page2.dart';
import 'package:flutter_chatai/intro_screen/intro_page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

PageController _controller = PageController();

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(controller: _controller, children: [
            IntroPage1(),
            IntroPage2(),
            IntroPage3(),
          ]),
          Container(
              alignment: Alignment(0, 0.8),
              child: SmoothPageIndicator(controller: _controller, count: 3))
        ],
      ),
    );
  }
}
