import 'package:flutter/material.dart';
import 'package:tracking_app/widgets/app_bar.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
        title: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text("Chat"), Text("Julia Pratama....")],
          ),
        ],
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.menu))],
      ),
    );
  }
}
