import 'package:flutter/material.dart';
import 'package:tracking_app/widgets/app_bar.dart';

import '../widgets/chat_input.dart';
import '../widgets/pinned_message.dart';
import '../widgets/receiver_bubble.dart';
import '../widgets/sender_bubble.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Chat",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Text("Julia Pratama....", style: TextStyle(fontSize: 14, color: Colors.white)),
            ],
          ),
        ],
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu, color: Colors.white))],
        backgroundColor: Colors.blueAccent,
      ),
      // backgroundColor: const Color.fromARGB(255, 0, 119, 255),
      body: SafeArea(
        child: Column(
          children: [
            const PinnedMessage(),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 10,
                ),
                children: const [
                  SenderBubble(
                    message: "asdasdasasasdas asas asd\nasd adas",
                    time: "12:34",
                  ),

                  SizedBox(height: 10),

                  ReceiverBubble(
                    name: "Andrey garskiy",
                    message: "asdasdasasasdas asas asd",
                    time: "12:34",
                    image: "https://i.pravatar.cc/150?img=1",
                  ),

                  SizedBox(height: 10),

                  ReceiverBubble(
                    name: "Alex Fred",
                    message: "asdasdasasasdas asas asd",
                    time: "12:34",
                    image: "https://i.pravatar.cc/150?img=2",
                  ),

                  SizedBox(height: 10),

                  ReceiverBubble(
                    name: "Uriy Medic",
                    message: "asdasdasasasdas asas asd asd\nasf",
                    time: "12:34",
                    image: "https://i.pravatar.cc/150?img=3",
                  ),

                  SizedBox(height: 10),

                  SenderBubble(
                    message: "asdasdasasasdas asas asd\nasd adas",
                    time: "12:34",
                  ),

                  SizedBox(height: 10),

                  SenderBubble(
                    message:
                        "asdasdasasasdas asas asd\n"
                        "asd adas asd asd asdas\n"
                        "das da d asd asdafdsg\n"
                        "ddfg afasfasghdf hggh\n"
                        "gsgds",
                    time: "12:34",
                    showButton: true,
                  ),
                ],
              ),
            ),

            const ChatInput(),
          ],
        ),
      ),
    );
  }
}
