import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tracking_app/views/registration_page.dart';
import 'package:tracking_app/widgets/button.dart';
import 'package:tracking_app/widgets/input.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.car_rental_rounded,
                    size: 45,
                    color: fromCssColor("#5061FF"),
                  ),
                  Text(
                    "Boost",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      fontFamily: GoogleFonts.montserratAlternates().fontFamily,
                      color: fromCssColor("#575757"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                child: Text(
                  "Log in",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.montserratAlternates().fontFamily,
                    color: fromCssColor("#575757"),
                  ),
                ),
              ),
              InputCustom(
                controller: emailController,
                text: "Username or Email",
                radius: 30,
                type: TextInputType.emailAddress,
                suffix: Icon(Icons.email),
              ),
              SizedBox(height: 15.0),
              InkWell(
                onTap: () {},
                child: CustomButtons(
                  textButton: "Continue With Email",
                  colorBg: Colors.indigoAccent,
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(child: Divider(thickness: 1)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("or", style: TextStyle(color: Colors.grey)),
                    ),
                    Expanded(child: Divider(thickness: 1)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              CustomButtons(
                textButton: "Continue With Google",
                isOutline: true,
                prefix: Icon(Icons.email, color: Colors.indigoAccent),
                onPressed: () {},
              ),
              SizedBox(height: 10),
              CustomButtons(
                textButton: "Continue With Apple",
                colorText: Colors.black,
                colorBg: Colors.white,
                prefix: Icon(Icons.apple, color: Colors.black),
                onPressed: () {},
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegistrationPage()),
                  );
                },
                child: Text(
                  "Registration",
                  style: TextStyle(color: fromCssColor("#5061FF")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
