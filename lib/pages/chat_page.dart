import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBar(
          title: const Text('Chat Ai - [Warning 18+]'),
          backgroundColor: Colors.blue,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25.0), // Adjust radius as needed
              bottomRight: Radius.circular(25.0), // Adjust radius as needed
            ),
          ),
        ),
      ),
      body: const Center(
        // Added const for better performance
        child: Text("Chat Content"),
      ),
    );
  }
}
