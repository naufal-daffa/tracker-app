import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {
  const ChatInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 8,
      ),
      color: Colors.white,
      child: Row(
        children: [
          const Icon(
            Icons.sentiment_satisfied_alt,
            color: Colors.grey,
          ),

          const SizedBox(width: 10),

          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Message",
                border: InputBorder.none,
              ),
            ),
          ),

          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.double_arrow,
              color: Color(0xff5C5CFF),
            ),
          ),
        ],
      ),
    );
  }
}