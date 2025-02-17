import 'package:flutter/material.dart';
import 'package:flutter_chatai/intro_screen/intro_page1.dart';
import 'package:flutter_chatai/intro_screen/intro_page2.dart';
import 'package:flutter_chatai/intro_screen/intro_page3.dart';
import 'package:flutter_chatai/pages/chat_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

PageController _controller = PageController();

bool onlastPage = false;

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  onlastPage = (index == 2);
                });
              },
              children: [
                IntroPage1(),
                IntroPage2(),
                IntroPage3(),
              ]),
          Container(
              alignment: Alignment(0, 0.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => {
                      _controller.jumpToPage(2),
                    },
                    child: Text('Skip'),
                  ),
                  SmoothPageIndicator(controller: _controller, count: 3),
                  onlastPage
                      ? GestureDetector(
                          onTap: () => {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ChatPage();
                            }))
                          },
                          child: Text('Done'),
                        )
                      : GestureDetector(
                          onTap: () => {
                                _controller.nextPage(
                                    duration: Duration(milliseconds: 600),
                                    curve: Curves.easeIn)
                              },
                          child: Text('Next')),
                ],
              ))
        ],
      ),
    );
  }
}
