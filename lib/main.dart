import 'package:flutter/material.dart';
import 'package:tyamo/Views/Auth/forgot_password.dart';
//import 'package:tyamo/Views/Auth/login.dart';
//import 'package:tyamo/Views/Auth/register.dart';

void main() {
  runApp(const Tyamo());
}

class Tyamo extends StatelessWidget {
  const Tyamo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tyamo',

      home: ForgotPassword(),
    );
  }
}
