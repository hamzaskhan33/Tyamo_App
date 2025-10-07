import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:tyamo/Views/Widgets/Auth/auth_heading.dart';
import 'package:tyamo/Views/Widgets/Auth/auth_textfield.dart';

class ForgotPassword extends StatelessWidget {
  final RoundedLoadingButtonController _forgotbtnController =
      RoundedLoadingButtonController();

  void _doSomething() async {
    Timer(Duration(seconds: 3), () {
      _forgotbtnController.success();
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
              mainText: "Forgot Your Password?",
              subText: "",
              logo: "assets/images/hamza.png",
              fontSize: 20,
              logoSize: 30,
            ),
            Column(
              children: [
                SizedBox(height: 10),
                Container(
                  height: 250,
                  width: 250,
                  child: Image.asset(
                    "assets/images/forgot_password.png",
                    filterQuality: FilterQuality.high,
                  ),
                ),
                SizedBox(height: 30),

                Text(
                  "To request a new one, type your email address. \nA link to reset the password will be sent to that email.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: Colors.black87,
                    letterSpacing: 0.5,
                  ),
                ),
                SizedBox(height: 30),
                AuthTextfield(
                  keyboardType: TextInputType.emailAddress,
                  labelText: 'Email',
                  obscureText: false,
                  icon: Icons.alternate_email,
                  fontSize: 12,
                  labelSize: 15,
                  iconSize: 20,
                ),
                SizedBox(height: 30),
                RoundedLoadingButton(
                  controller: _forgotbtnController,
                  width: 2000,
                  borderRadius: 10,
                  color: Color(0xff00c1aa),
                  onPressed: _doSomething,
                  child: Text(
                    "Send",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
