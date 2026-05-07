import 'package:flutter/material.dart';
import 'package:tracking_app/views/login_page.dart';

class BoardingPage extends StatelessWidget {
  const BoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),

              // IMAGE
              // Container(
              //   height: 300,
              //   width: 300,
              //   decoration: BoxDecoration(
              //     color: Colors.white.withOpacity(0.1),
              //     borderRadius: BorderRadius.circular(30),
              //   ),
              //   child: const Icon(
              //     Icons.chat_bubble_rounded,
              //     size: 120,
              //     color: Colors.white,
              //   ),
              // ),

              const SizedBox(height: 50),

              // TITLE
              const Text(
                "Fast & Secure\nMessaging",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  height: 1.2,
                ),
              ),

              const SizedBox(height: 20),

              // DESCRIPTION
              Text(
                "Connect with your friends instantly\nwith modern and secure chat.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 16,
                  height: 1.5,
                ),
              ),

              const Spacer(),

              // BUTTON
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xff5C5CFF),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // INDICATOR
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     buildDot(true),
              //     buildDot(false),
              //     buildDot(false),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget buildDot(bool isActive) {
  //   return AnimatedContainer(
  //     duration: const Duration(milliseconds: 300),
  //     margin: const EdgeInsets.symmetric(horizontal: 4),
  //     width: isActive ? 24 : 8,
  //     height: 8,
  //     decoration: BoxDecoration(
  //       color: isActive
  //           ? Colors.white
  //           : Colors.white.withOpacity(0.4),
  //       borderRadius: BorderRadius.circular(20),
  //     ),
  //   );
  // }
}