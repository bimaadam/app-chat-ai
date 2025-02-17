import 'package:flutter/material.dart';
import 'package:flutter_chatai/pages/chat_page.dart';
import 'package:flutter_chatai/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bimz Chat Ai',
        initialRoute: '/',
        routes: {
          '/': (context) => const WelcomePage(),
          '/chat': (context) => const ChatPage(),
        });
  }
}
