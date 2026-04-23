import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tracking_app/views/login_page.dart';
import 'package:tracking_app/widgets/button.dart';
import 'package:tracking_app/widgets/input.dart';

class RegistrationPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Image.asset(
              "assets/undraw_Account_re_o7id.png",
              width: 150,
              height: 150,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  "Create Account",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.montserratAlternates().fontFamily,
                    color: fromCssColor("#575757"),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 15,
              ),
              child: Column(
                children: [
                  SizedBox(height: 10.0),
                  InputCustom(
                    controller: emailController,
                    text: "Username or Email",
                    radius: 30,
                    type: TextInputType.emailAddress,
                    suffix: Icon(Icons.email),
                  ),
                  SizedBox(height: 15),
                  InputCustom(
                    controller: passwordController,
                    text: "Password",
                    radius: 30,
                    type: TextInputType.visiblePassword,
                    suffix: Icon(Icons.password),
                  ),
                  SizedBox(height: 15),
                  InputCustom(
                    controller: passwordController,
                    text: "Confirm Password",
                    radius: 30,
                    type: TextInputType.visiblePassword,
                    suffix: Icon(Icons.password),
                  ),
                  SizedBox(height: 15.0),
                  InkWell(
                    onTap: () {},
                    child: CustomButtons(
                      textButton: "Register",
                      colorBg: Colors.indigoAccent,
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have account?",
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily:
                              GoogleFonts.montserratAlternates().fontFamily,
                        ),
                      ),
                      SizedBox(width: 10),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(color: fromCssColor("#5061FF")),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
