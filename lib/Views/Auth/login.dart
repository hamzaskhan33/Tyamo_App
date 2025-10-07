import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:tyamo/Views/Widgets/Auth/auth_heading.dart';
import 'package:tyamo/Views/Widgets/Auth/auth_textfield.dart';

class Login extends StatelessWidget {
  Login({super.key});

  // const Login({ super.key});
  final RoundedLoadingButtonController _loginbtnController =
      RoundedLoadingButtonController();

  void _doSomething() async {
    Timer(Duration(seconds: 3), () {
      _loginbtnController.success();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tyamo",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff000221),
      ),
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            AuthHeading(
              mainText: "Sign in to Tyamo",
              subText: "To connect with \nyour partner",
              logo: "assets/images/hamza.png",
              fontSize: 20,
              logoSize: 30,
            ),
            Column(
              children: [
                SizedBox(height: 30),
                AuthTextfield(
                  keyboardType: TextInputType.emailAddress,
                  labelText: 'Email',
                  obscureText: false, 
                  icon: Icons.alternate_email,
                  fontSize: 12, 
                  labelSize:15,
                  iconSize: 20),
                  SizedBox(height: 20,),
                AuthTextfield(
                  keyboardType: TextInputType.text,
                  labelText: 'Password',
                  obscureText: true, 
                  icon: Icons.password,
                  fontSize: 12, 
                  labelSize:15,
                  iconSize: 20),

               
                SizedBox(height: 20),
                RoundedLoadingButton(
                  controller: _loginbtnController,
                  width: 2000,
                  borderRadius: 10,
                  color: Color(0xff00c1aa),
                  onPressed: _doSomething,
                  child: Text(
                    "Login",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5
                    ),
                  ),
                ),

                SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Forgot Possword?',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: const Color.fromARGB(255, 179, 24, 13),
                      fontWeight: FontWeight.normal,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.normal,
                        letterSpacing: 0.5,
                      ),
                    ),

                    Text(
                      "Sign Up!",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: const Color(0xff2f76ea),
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
