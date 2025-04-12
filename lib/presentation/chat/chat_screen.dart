import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(1),
          child: CircleAvatar(
            backgroundImage: const NetworkImage(
              "https://imagedelivery.net/lCsODh8EJUNDijZLbbcSWQ/d1444e92-3487-49b0-c2f1-1e8454b06600/mediumsquare",
            ),
          ),
        ),
        title: Row(
          children: const [
            Text("Mi amor"),
            SizedBox(width: 8),
            Icon(Icons.favorite, color: Colors.red),
          ],
        ),
        //   centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "chats ",
          style: TextStyle(fontSize: 16), // Added style for better readability
        ), // Placeholder for the body content
      ),
    );
  }
}
