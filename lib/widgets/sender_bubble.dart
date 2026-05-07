import 'package:flutter/material.dart';

class SenderBubble extends StatelessWidget {
  final String message;
  final String time;
  final bool showButton;

  const SenderBubble({
    super.key,
    required this.message,
    required this.time,
    this.showButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Stack(
        children: [
          Container(
            constraints: const BoxConstraints(
              maxWidth: 260,
            ),
            padding: const EdgeInsets.fromLTRB(
              14,
              12,
              14,
              20,
            ),
            decoration: BoxDecoration(
              color: const Color(0xff5C5CFF),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Text(
                  message,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),

                const SizedBox(height: 4),

                Align(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        time,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 11,
                        ),
                      ),

                      const SizedBox(width: 4),

                      const Icon(
                        Icons.done_all,
                        size: 15,
                        color: Colors.white70,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          if (showButton)
            Positioned(
              bottom: -2,
              right: -2,
              child: Container(
                width: 42,
                height: 42,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: const Icon(
                  Icons.keyboard_arrow_down,
                  color: Color(0xff5C5CFF),
                ),
              ),
            ),
        ],
      ),
    );
  }
}