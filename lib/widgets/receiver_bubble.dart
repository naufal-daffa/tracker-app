import 'package:flutter/material.dart';

class ReceiverBubble extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final String image;

  const ReceiverBubble({
    super.key,
    required this.name,
    required this.message,
    required this.time,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CircleAvatar(
          radius: 22,
          backgroundImage: NetworkImage(image),
        ),

        const SizedBox(width: 8),

        Container(
          constraints: const BoxConstraints(
            maxWidth: 250,
          ),
          padding: const EdgeInsets.fromLTRB(
            14,
            10,
            14,
            18,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  color: Color(0xff4A5CFF),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),

              const SizedBox(height: 4),

              Text(
                message,
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                ),
              ),

              const SizedBox(height: 4),

              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  time,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 11,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}