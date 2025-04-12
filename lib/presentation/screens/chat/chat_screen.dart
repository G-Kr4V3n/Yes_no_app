import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/general_widgets/input_message_box.dart';

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
      body: ChatView(),
    );
  }
}

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? const HerMessageBubble()
                      : const MyMessageBubble();
                },
              ),
            ),
            const InputMessageBox(),
          ],
        ),
      ),
    );
  }
}



